import 'package:freezed_annotation/freezed_annotation.dart';
part 'venue.freezed.dart';
part 'venue.g.dart';

@freezed
abstract class Venue with _$Venue {
  const factory Venue({
    @JsonKey(name: "venue_id") required String? venueId,
    required String? name,
    required List<Room>? rooms,
  }) = _Venue;
  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@freezed
abstract class Room with _$Room {
  const factory Room({
    @JsonKey(name: "room_id") required String? roomId,
    required String? name,
    required int? capacity,
    required List<Booking>? bookings,
  }) = _Room;
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    required String? userId,
    @JsonKey(name: "start_time") required String? startTime,
    @JsonKey(name: "end_time") required String? endTime,
  }) = _Booking;
  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
