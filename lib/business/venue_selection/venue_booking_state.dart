part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingState with _$VenueBookingState {
  const factory VenueBookingState.initial() = _Initial;
  const factory VenueBookingState.loading() = _Loading;
  const factory VenueBookingState.failure({required String? message}) =
      _Failure;
  const factory VenueBookingState.venuesFetched({
    required List<Venue> venues,
    required List<Room> rooms,
    required String? venueID,
    required String? roomID,
    required String? timeSlotID,
    required BookingStatus? status,
    String? message,
  }) = _VenuesFetched;
}
