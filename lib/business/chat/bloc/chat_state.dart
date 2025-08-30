part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.typing({required List<ChatMessage> messages}) =
      _Typing;
  const factory ChatState.success({required List<ChatMessage> messages}) =
      _Success;
  const factory ChatState.failure({required String? message}) = _Failure;
}
