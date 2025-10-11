part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingEvent with _$VenueBookingEvent {
  const factory VenueBookingEvent.fetchVenues({required String date}) =
      _FetchVenues;
  const factory VenueBookingEvent.bookVenue({
    required String? roomId,
    required DateTime? startTime,
    required DateTime? endTime,
  }) = _BookVenue;
}
