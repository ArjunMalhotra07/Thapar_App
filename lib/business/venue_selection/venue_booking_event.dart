part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingEvent with _$VenueBookingEvent {
  const factory VenueBookingEvent.fetchVenues({required String date}) =
      _FetchVenues;
  const factory VenueBookingEvent.selectedVenue({required String venueID}) =
      _SelectedVenue;
  const factory VenueBookingEvent.selectedRoom({required String roomID}) =
      _SelectedRoom;
  const factory VenueBookingEvent.selectedTimeSlot({
    required String timeSlotID,
  }) = _SelectedTimeSlot;
  const factory VenueBookingEvent.bookVenue({
    required String? venueId,
    required String? roomId,
    required String? startTime,
    required String? endTime,
    required String? date,
  }) = _BookVenue;
}
