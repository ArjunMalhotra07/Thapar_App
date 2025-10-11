import 'package:freezed_annotation/freezed_annotation.dart';
part 'venue.freezed.dart';
part 'venue.g.dart';

@freezed
abstract class Venue with _$Venue {
  const factory Venue({
    @JsonKey(name: "id") required String? id,
    required final String? name,
    required Room? rooms,
  }) = _Venue;
  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@freezed
abstract class Room with _$Room {
  const factory Room({
    @JsonKey(name: "id") required String? id,
    required final String? name,
    required final String? capacity,
    @JsonKey(name: "start_time") required final DateTime? startTime,
    @JsonKey(name: "end_time") required final DateTime? endTime,
  }) = _Room;
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
