part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingEvent with _$VenueBookingEvent {
  const factory VenueBookingEvent.started() = _Started;
}