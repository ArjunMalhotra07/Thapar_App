// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VenueImpl _$$VenueImplFromJson(Map<String, dynamic> json) => _$VenueImpl(
  venueId: json['venue_id'] as String?,
  name: json['name'] as String?,
  rooms: (json['rooms'] as List<dynamic>?)
      ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$VenueImplToJson(_$VenueImpl instance) =>
    <String, dynamic>{
      'venue_id': instance.venueId,
      'name': instance.name,
      'rooms': instance.rooms,
    };

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
  roomId: json['room_id'] as String?,
  name: json['name'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  bookings: (json['bookings'] as List<dynamic>?)
      ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'name': instance.name,
      'capacity': instance.capacity,
      'bookings': instance.bookings,
    };

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      userId: json['userId'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
