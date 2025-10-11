import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
part 'venue_booking_response.freezed.dart';
part 'venue_booking_response.g.dart';

@freezed
abstract class VenueBookingResponse with _$VenueBookingResponse {
  const factory VenueBookingResponse({
    required String? success,
    required final int? count,
    required Venue? venues,
  }) = _VenueBookingResponse;
  factory VenueBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$VenueBookingResponseFromJson(json);
}
