import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/data/repo/venue_booking_repo.dart';
import 'package:thaparapp/injector.dart';

part 'venue_booking_event.dart';
part 'venue_booking_state.dart';
part 'venue_booking_bloc.freezed.dart';

class VenueBookingBloc extends Bloc<VenueBookingEvent, VenueBookingState> {
  final VenueBookingRepo venueBookingRepo;
  final List<Map<String, dynamic>> timeSlots = List.generate(24, (index) {
    final hour = index;
    final nextHour = (index + 1) % 24;
    final startTime = '${hour.toString().padLeft(2, '0')}:00';
    final endTime = '${nextHour.toString().padLeft(2, '0')}:00';

    String label;
    if (hour == 0) {
      label = '12AM - 01AM';
    } else if (hour < 12) {
      label =
          '${hour.toString().padLeft(2, '0')}AM - ${(hour + 1).toString().padLeft(2, '0')}${hour + 1 == 12 ? 'PM' : 'AM'}';
    } else if (hour == 12) {
      label = '12PM - 01PM';
    } else {
      final displayHour = hour - 12;
      final nextDisplayHour = hour + 1 == 24 ? 12 : (hour + 1) - 12;
      label =
          '${displayHour.toString().padLeft(2, '0')}PM - ${nextDisplayHour.toString().padLeft(2, '0')}${hour + 1 == 24 ? 'AM' : 'PM'}';
    }

    return {
      'id': hour.toString(),
      'label': label,
      'startTime': startTime,
      'endTime': endTime,
      'hour': hour,
    };
  });

  VenueBookingBloc({required this.venueBookingRepo}) : super(_Initial()) {
    on<_FetchVenues>(fetchVenues);
    on<_BookVenue>(bookVenue);
    on<_SelectedVenue>(selectVenue);
    on<_SelectedRoom>(selectRoom);
    on<_SelectedTimeSlot>(selectTimeSlot);
  }

  void fetchVenues(event, emit) async {
    try {
      emit(const VenueBookingState.loading());
      final venues = await venueBookingRepo.fetchVenues(event.date);
      emit(
        VenueBookingState.venuesFetched(
          venues: venues.venues ?? [],
          rooms: [],
          venueID: null,
          roomID: null,
          timeSlotID: null,
        ),
      );
    } catch (e) {
      emit(VenueBookingState.failure(message: e.toString()));
    }
  }

  void selectVenue(event, emit) {
    final currentState = state.mapOrNull(venuesFetched: (value) => value);
    if (currentState != null) {
      final selectedVenue = currentState.venues.firstWhere(
        (venue) => venue.venueId == event.venueID,
        orElse: () => const Venue(venueId: null, name: null, rooms: []),
      );

      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: selectedVenue.rooms ?? [],
          venueID: event.venueID,
          roomID: null, // Reset room selection when venue changes
          timeSlotID: null,
        ),
      );
    }
  }

  void selectRoom(event, emit) {
    final currentState = state.mapOrNull(venuesFetched: (value) => value);
    if (currentState != null) {
      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: currentState.rooms,
          venueID: currentState.venueID,
          roomID: event.roomID,
          timeSlotID: null,
        ),
      );
    }
  }

  void selectTimeSlot(event, emit) {
    final currentState = state.mapOrNull(venuesFetched: (value) => value);
    if (currentState != null) {
      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: currentState.rooms,
          venueID: currentState.venueID,
          roomID: currentState.roomID,
          timeSlotID: event.timeSlotID,
        ),
      );
    }
  }

  void bookVenue(event, emit) async {
    try {
      final currentState = state.mapOrNull(venuesFetched: (value) => value);
      if (currentState == null) return;

      // Emit booking in progress with current state data
      emit(
        VenueBookingState.bookingInProgress(
          venues: currentState.venues,
          rooms: currentState.rooms,
          venueID: currentState.venueID,
          roomID: currentState.roomID,
          timeSlotID: currentState.timeSlotID,
        ),
      );

      Map<String, dynamic> body = {
        "venue_id": event.venueId,
        "room_id": event.roomId,
        "start_time": event.startTime,
        "end_time": event.endTime,
        "date": event.date,
      };
      await Future.delayed(Duration(seconds: 10));
      final res = await venueBookingRepo.bookVenue(body);

      // Update the bookings for the selected room
      final updatedVenues = currentState.venues.map((venue) {
        if (venue.venueId == currentState.venueID) {
          final updatedRooms = venue.rooms?.map((room) {
            if (room.roomId == currentState.roomID) {
              // Add the new booking to the room
              final newBooking = Booking(
                userId:
                    "current_user", // You might want to get this from auth state
                startTime: event.startTime,
                endTime: event.endTime,
              );
              final updatedBookings = <Booking>[
                ...(room.bookings ?? []),
                newBooking,
              ];
              return room.copyWith(bookings: updatedBookings);
            }
            return room;
          }).toList();
          return venue.copyWith(rooms: updatedRooms);
        }
        return venue;
      }).toList();

      // Return to venuesFetched state with updated bookings
      emit(
        VenueBookingState.venuesFetched(
          venues: updatedVenues,
          rooms: currentState.rooms.map((room) {
            if (room.roomId == currentState.roomID) {
              final newBooking = Booking(
                userId: locator<AuthBloc>().user?.userId ?? "unknown_user",
                startTime: event.startTime,
                endTime: event.endTime,
              );
              final updatedBookings = <Booking>[
                ...(room.bookings ?? []),
                newBooking,
              ];
              return room.copyWith(bookings: updatedBookings);
            }
            return room;
          }).toList(),
          venueID: currentState.venueID,
          roomID: currentState.roomID,
          timeSlotID: currentState.timeSlotID,
        ),
      );

      // Emit success message briefly (will be handled by snackbar)
      emit(
        VenueBookingState.bookingSuccess(
          message: "Booking confirmed successfully!",
        ),
      );

      // Return to updated venuesFetched state
      await Future.delayed(Duration(milliseconds: 100));
      emit(
        VenueBookingState.venuesFetched(
          venues: updatedVenues,
          rooms: currentState.rooms.map((room) {
            if (room.roomId == currentState.roomID) {
              final newBooking = Booking(
                userId: locator<AuthBloc>().user?.userId ?? "unknown_user",
                startTime: event.startTime,
                endTime: event.endTime,
              );
              final updatedBookings = <Booking>[
                ...(room.bookings ?? []),
                newBooking,
              ];
              return room.copyWith(bookings: updatedBookings);
            }
            return room;
          }).toList(),
          venueID: currentState.venueID,
          roomID: currentState.roomID,
          timeSlotID: null, // Reset time slot after booking
        ),
      );
    } catch (e) {
      // On failure, return to previous state with error
      final currentState = state.mapOrNull(
        bookingInProgress: (value) => value,
        venuesFetched: (value) => value,
      );

      if (currentState != null && currentState is _BookingInProgress) {
        emit(
          VenueBookingState.venuesFetched(
            venues: currentState.venues,
            rooms: currentState.rooms,
            venueID: currentState.venueID,
            roomID: currentState.roomID,
            timeSlotID: currentState.timeSlotID,
          ),
        );
      }

      emit(VenueBookingState.failure(message: e.toString()));

      // Return to venuesFetched state after showing error
      await Future.delayed(Duration(milliseconds: 100));
      if (currentState != null && currentState is _BookingInProgress) {
        emit(
          VenueBookingState.venuesFetched(
            venues: currentState.venues,
            rooms: currentState.rooms,
            venueID: currentState.venueID,
            roomID: currentState.roomID,
            timeSlotID: currentState.timeSlotID,
          ),
        );
      }
    }
  }
}
