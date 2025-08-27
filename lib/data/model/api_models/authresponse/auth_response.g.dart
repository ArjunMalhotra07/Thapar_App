// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      message: json['message'] as String?,
      jwt: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'access_token': instance.jwt,
      'refresh_token': instance.refreshToken,
      'data': instance.data,
    };
