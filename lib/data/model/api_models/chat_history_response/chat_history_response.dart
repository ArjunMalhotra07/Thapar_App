import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_response.freezed.dart';
part 'chat_history_response.g.dart';

@freezed
class ChatHistoryMessage with _$ChatHistoryMessage {
  const factory ChatHistoryMessage({
    required String role,
    required String message,
    required String timestamp,
  }) = _ChatHistoryMessage;

  factory ChatHistoryMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryMessageFromJson(json);
}

@freezed
class ChatHistoryApiResponse with _$ChatHistoryApiResponse {
  const factory ChatHistoryApiResponse({
    required bool success,
    required int count,
    required List<ChatHistoryMessage> data,
    String? error,
    String? details,
  }) = _ChatHistoryApiResponse;
  
  factory ChatHistoryApiResponse.fromJson(Map<String, dynamic> json) => 
      _$ChatHistoryApiResponseFromJson(json);
}