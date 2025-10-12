import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/data/repo/venue_booking_repo.dart';

part 'venue_booking_event.dart';
part 'venue_booking_state.dart';
part 'venue_booking_bloc.freezed.dart';

class VenueBookingBloc extends Bloc<VenueBookingEvent, VenueBookingState> {
  final VenueBookingRepo venueBookingRepo;
  VenueBookingBloc({required this.venueBookingRepo}) : super(_Initial()) {
    on<_FetchVenues>(fetchVenues);
    on<_BookVenue>(bookVenue);
    on<_SelectedVenue>(selectVenue);
    on<_SelectedRoom>(selectRoom);
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
