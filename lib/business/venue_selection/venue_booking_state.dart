part of 'venue_booking_bloc.dart';

@freezed
class VenueBookingState with _$VenueBookingState {
  const factory VenueBookingState.initial() = _Initial;
  const factory VenueBookingState.success({
    required VenueBookingResponse? response,
  }) = _Success;
  const factory VenueBookingState.failure({required String? message}) =
      _Failure;
  const factory VenueBookingState.loading() =
      _Loading;
}
