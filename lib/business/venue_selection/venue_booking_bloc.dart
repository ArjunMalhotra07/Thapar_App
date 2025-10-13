import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/data/repo/venue_booking_repo.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';
import 'package:thaparapp/utils/date_time_utils.dart';
import 'package:thaparapp/utils/venue_booking_utils.dart';

part 'venue_booking_event.dart';
part 'venue_booking_state.dart';
part 'venue_booking_bloc.freezed.dart';

enum BookingStatus { none, pending, completed, rejected }

class VenueBookingBloc extends Bloc<VenueBookingEvent, VenueBookingState> {
  final VenueBookingRepo venueBookingRepo;
  final StartupRepo startupRepo;
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

  VenueBookingBloc({required this.venueBookingRepo, required this.startupRepo})
    : super(_Initial()) {
    on<_FetchVenues>(fetchVenues);
    on<_BookVenue>(bookVenue);
    on<_SelectedVenue>(selectVenue);
    on<_SelectedRoom>(selectRoom);
    on<_SelectedTimeSlot>(selectTimeSlot);
    on<_Reset>(reset);
  }

  void reset(event, emit) {
    emit(const VenueBookingState.initial());
  }

  void fetchVenues(event, emit) async {
    try {
      emit(const VenueBookingState.loading());
      final venuesData = await venueBookingRepo.fetchVenues(event.date);
      final venues = venuesData.venues ?? [];

      // Get current user ID from StartupRepo
      final user = await startupRepo.fetchUser();
      final currentUserId = user?.userId ?? user?.id;

      // Check if user has any bookings
      String? userVenueId;
      String? userRoomId;
      String? userTimeSlotId;
      BookingStatus bookingStatus = BookingStatus.none;
      String? bookingMessage;

      if (currentUserId != null) {
        // Find user's booking using utility function
        final userBookingData = VenueBookingUtils.findUserUpcomingBooking(
          venues,
          currentUserId,
        );

        if (userBookingData != null) {
          final venue = userBookingData['venue'] as Venue;
          final room = userBookingData['room'] as Room;
          final booking = userBookingData['booking'] as Booking;

          userVenueId = venue.venueId;
          userRoomId = room.roomId;

          // Extract time slot from booking
          if (booking.startTime != null) {
            final bookingStart = DateTimeUtils.parseDateTime(booking.startTime);
            if (bookingStart != null) {
              userTimeSlotId = bookingStart.hour.toString();
            }
          }

          // Determine booking status - existing bookings are always completed/confirmed
          // Only bookings made through the app in this session are pending
          bookingStatus = BookingStatus.completed;
          final timeRemaining = DateTimeUtils.getTimeRemaining(
            booking.startTime,
          );
          if (timeRemaining == 'In progress') {
            bookingMessage = "Your booking is currently in progress";
          } else {
            bookingMessage = "You have an upcoming booking - $timeRemaining";
          }
        }
      }

      // Set initial rooms if user has a booking
      List<Room> initialRooms = [];
      if (userVenueId != null) {
        final selectedVenue = venues.firstWhere(
          (venue) => venue.venueId == userVenueId,
          orElse: () => const Venue(venueId: null, name: null, rooms: []),
        );
        initialRooms = selectedVenue.rooms ?? [];
      }

      emit(
        VenueBookingState.venuesFetched(
          venues: venues,
          rooms: initialRooms,
          venueID: userVenueId,
          roomID: userRoomId,
          timeSlotID: userTimeSlotId,
          status: bookingStatus,
          message: bookingMessage,
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

      // Only reset room selection if venue actually changes
      final shouldResetRoom = currentState.venueID != event.venueID;

      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: selectedVenue.rooms ?? [],
          venueID: event.venueID,
          roomID: shouldResetRoom ? null : currentState.roomID,
          timeSlotID: shouldResetRoom ? null : currentState.timeSlotID,
          status: currentState.status,
        ),
      );
    }
  }

  void selectRoom(event, emit) {
    final currentState = state.mapOrNull(venuesFetched: (value) => value);
    if (currentState != null) {
      // Only reset timeSlot selection if room actually changes
      final shouldResetTimeSlot = currentState.roomID != event.roomID;

      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: currentState.rooms,
          venueID: currentState.venueID,
          roomID: event.roomID,
          timeSlotID: shouldResetTimeSlot ? null : currentState.timeSlotID,
          status: currentState.status,
        ),
      );
    }
  }

  void selectTimeSlot(event, emit) {
    final currentState = state.mapOrNull(venuesFetched: (value) => value);
    if (currentState != null) {
      // final shouldResetRoom = currentState.roomID != event.roomID;
      emit(
        currentState.copyWith(
          venues: currentState.venues,
          rooms: currentState.rooms,
          venueID: currentState.venueID,
          roomID: currentState.roomID,
          timeSlotID: event.timeSlotID,
          status: currentState.status,
        ),
      );
    }
  }

  void bookVenue(event, emit) async {
    try {
      final currentState = state.mapOrNull(venuesFetched: (value) => value);
      if (currentState == null) return;

      // Emit pending status immediately
      emit(
        currentState.copyWith(
          venueID: event.venueId,
          roomID: event.roomId,
          timeSlotID: event.startTime != null
              ? DateTimeUtils.parseDateTime(event.startTime)?.hour.toString()
              : null,
          status: BookingStatus.pending,
          message: "Please wait for the admin to approve",
        ),
      );

      // Prepare booking request body
      Map<String, dynamic> body = {
        "room_id": event.roomId,
        "start_time": event.startTime,
        "end_time": event.endTime,
      };

      // Wait 10 seconds before making API call
      await Future.delayed(const Duration(seconds: 10));

      // Make booking API call
      await venueBookingRepo.bookVenue(body);

      // Update to completed status
      final updatedState = state.mapOrNull(venuesFetched: (value) => value);
      if (updatedState != null) {
        emit(
          updatedState.copyWith(
            status: BookingStatus.completed,
            message: "Booking confirmed",
          ),
        );
      }
    } catch (e) {
      // On failure, update to rejected status
      final currentState = state.mapOrNull(venuesFetched: (value) => value);
      if (currentState != null) {
        emit(
          currentState.copyWith(
            status: BookingStatus.rejected,
            message: "Booking failed: ${e.toString()}",
          ),
        );
      }
    }
  }
}
