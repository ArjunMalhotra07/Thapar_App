import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/data/repo/venue_booking_repo.dart';

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
      label = '${hour.toString().padLeft(2, '0')}AM - ${(hour + 1).toString().padLeft(2, '0')}${hour + 1 == 12 ? 'PM' : 'AM'}';
    } else if (hour == 12) {
      label = '12PM - 01PM';
    } else {
      final displayHour = hour - 12;
      final nextDisplayHour = hour + 1 == 24 ? 12 : (hour + 1) - 12;
      label = '${displayHour.toString().padLeft(2, '0')}PM - ${nextDisplayHour.toString().padLeft(2, '0')}${hour + 1 == 24 ? 'AM' : 'PM'}';
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
      emit(const VenueBookingState.bookingInProgress());
      Map<String, dynamic> body = {
        "venue_id": event.venueId,
        "room_id": event.roomId,
        "start_time": event.startTime,
        "end_time": event.endTime,
        "date": event.date,
      };
      await Future.delayed(Duration(seconds: 10));
      final res = await venueBookingRepo.bookVenue(body);
      emit(
        VenueBookingState.bookingSuccess(
          message: "Booking confirmed successfully!",
        ),
      );
    } catch (e) {
      emit(VenueBookingState.failure(message: e.toString()));
    }
  }
}
