// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_found_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostFoundResponseImpl _$$LostFoundResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LostFoundResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => LostFoundItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$LostFoundResponseImplToJson(
  _$LostFoundResponseImpl instance,
) => <String, dynamic>{'items': instance.items};
