part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.initializeChat({required String? chatID}) =
      _InitializeChat;
  const factory ChatEvent.sendMessage({required String? userMessage}) =
      _SendMessage;
  const factory ChatEvent.loadChatHistory({required String? chatID}) =
      _LoadChatHistory;
  const factory ChatEvent.clearMessagesOnLogout() = _ClearMessagesOnLogout;
}
