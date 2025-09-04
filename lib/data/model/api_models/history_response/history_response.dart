import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse({
    required List<HistoryMessage> messages,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
}

@freezed
class HistoryMessage with _$HistoryMessage {
  const factory HistoryMessage({
    required String role,
    required String message,
    required String timestamp,
  }) = _HistoryMessage;

  factory HistoryMessage.fromJson(Map<String, dynamic> json) =>
      _$HistoryMessageFromJson(json);
}