// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VenueBookingResponseImpl _$$VenueBookingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VenueBookingResponseImpl(
  success: json['success'] as bool?,
  count: (json['count'] as num?)?.toInt(),
  venues: (json['venues'] as List<dynamic>?)
      ?.map((e) => Venue.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$VenueBookingResponseImplToJson(
  _$VenueBookingResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'venues': instance.venues,
};
