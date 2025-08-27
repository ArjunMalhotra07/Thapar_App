// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifytoken.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyTokenResponseImpl _$$VerifyTokenResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyTokenResponseImpl(
  message: json['message'] as String?,
  valid: json['valid'] as bool?,
  userId: json['user_id'] as String?,
  expiresIn: (json['expires_in'] as num?)?.toInt(),
);

Map<String, dynamic> _$$VerifyTokenResponseImplToJson(
  _$VerifyTokenResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'valid': instance.valid,
  'user_id': instance.userId,
  'expires_in': instance.expiresIn,
};
