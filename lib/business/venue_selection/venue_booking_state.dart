part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingState with _$VenueBookingState {
  const factory VenueBookingState.initial() = _Initial;
  const factory VenueBookingState.venuesFetched({
    required List<Venue> venues,
    required List<Room> rooms,
    required String? venueID,
    required String? roomID,
    required String? timeSlotID,
  }) = _VenuesFetched;
  const factory VenueBookingState.bookingInProgress() = _BookingInProgress;
  const factory VenueBookingState.bookingSuccess({required String? message}) =
      _BookingSuccess;
  const factory VenueBookingState.failure({required String? message}) =
      _Failure;
  const factory VenueBookingState.loading() = _Loading;
}
