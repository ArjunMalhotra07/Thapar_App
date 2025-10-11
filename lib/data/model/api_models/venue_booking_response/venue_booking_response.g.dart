// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VenueBookingResponseImpl _$$VenueBookingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VenueBookingResponseImpl(
  success: json['success'] as String?,
  count: (json['count'] as num?)?.toInt(),
  venues: json['venues'] == null
      ? null
      : Venue.fromJson(json['venues'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$VenueBookingResponseImplToJson(
  _$VenueBookingResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'venues': instance.venues,
};
