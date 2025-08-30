import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/repo/chat_repo.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepo chatRepo;

  List<ChatMessage> messages = [];
  String currentChatId = '';

  ChatBloc({required this.chatRepo}) : super(_Initial()) {
    on<_InitializeChat>(_onInitializeChat);
    on<_SendMessage>(_onSendMessage);
    on<_LoadChatHistory>(_onLoadChatHistory);
    on<_ClearChat>(_onClearChat);
  }

  void _onInitializeChat(_InitializeChat event, emit) async {
    emit(ChatState.loading());
    try {
      currentChatId = event.chatID ?? _generateChatId();
      messages = [];
      // Load initial AI greeting
      final greeting = ChatMessage(
        id: _generateMessageId(),
        message:
            "Hey, I'm AI ChatBot, your smart buddy at Thapar University. From class schedules to campus updates, I've got the answers.\n\nWhat's the first thing you wanna know today?",
        isUser: false,
        timeStamp: DateTime.now(),
        status: MessageStatus.sent,
      );

      messages.add(greeting);
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onSendMessage(event, emit) async {
    if (event.message.trim().isEmpty) return;
    // Add user message immediately
    final userMessage = ChatMessage(
      id: _generateMessageId(),
      message: event.message,
      isUser: true,
      timeStamp: DateTime.now(),
      status: null,
    );
    messages.add(userMessage);
    emit(ChatState.success(messages: List.from(messages)));
    // Show typing indicator
    emit(ChatState.typing(messages: List.from(messages)));
    try {
      final response = await chatRepo.sendMessage(
        chatId: currentChatId,
        message: event.message,
      );

      final aiMessage = ChatMessage(
        id: response.id ?? _generateMessageId(),
        message: response.message ?? "Sorry, I couldn't process your request.",
        isUser: false,
        timeStamp: DateTime.now(),
        status: null,
      );

      messages.add(aiMessage);
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      final errorMessage = ChatMessage(
        id: _generateMessageId(),
        message:
            "Sorry, I'm having trouble connecting right now. Please try again.",
        isUser: false,
        timeStamp: DateTime.now(),
        status: null,
      );
      messages.add(errorMessage);
      emit(ChatState.success(messages: List.from(messages)));
    }
  }

  void _onLoadChatHistory(event, emit) async {
    emit(ChatState.loading());
    try {
      final history = await chatRepo.getChatHistory(chatId: event.chatId);
      messages = history;
      currentChatId = event.chatId;
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onClearChat(event, emit) async {
    try {
      await chatRepo.clearChat(chatId: currentChatId);
      messages.clear();
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  String _generateChatId() => DateTime.now().millisecondsSinceEpoch.toString();
  String _generateMessageId() =>
      DateTime.now().microsecondsSinceEpoch.toString();
}
