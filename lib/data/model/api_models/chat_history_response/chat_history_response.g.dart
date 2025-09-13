// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryMessageImpl _$$ChatHistoryMessageImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryMessageImpl(
  role: json['role'] as String,
  message: json['message'] as String,
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$ChatHistoryMessageImplToJson(
  _$ChatHistoryMessageImpl instance,
) => <String, dynamic>{
  'role': instance.role,
  'message': instance.message,
  'timestamp': instance.timestamp,
};

_$ChatHistoryApiResponseImpl _$$ChatHistoryApiResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryApiResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => ChatHistoryMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
  error: json['error'] as String?,
  details: json['details'] as String?,
);

Map<String, dynamic> _$$ChatHistoryApiResponseImplToJson(
  _$ChatHistoryApiResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
  'error': instance.error,
  'details': instance.details,
};
