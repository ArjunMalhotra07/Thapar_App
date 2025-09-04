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
  String currentUserId = '';

  ChatBloc({required this.chatRepo}) : super(_Initial()) {
    on<_InitializeChat>(_onInitializeChat);
    on<_SendMessage>(_onSendMessage);
    on<_LoadChatHistory>(_onLoadChatHistory);
    on<_ClearChat>(_onClearChat);
  }

  void _onInitializeChat(_InitializeChat event, emit) async {
    emit(ChatState.loading());
    try {
      currentUserId = event.chatID ?? _generateUserId();
      messages = [];
      
      // Try to load existing chat history first
      try {
        final history = await chatRepo.getChatHistory(chatId: currentUserId);
        
        // Always add the intro message first
        final greeting = ChatMessage(
          id: _generateMessageId(),
          message:
              "Hey, I'm AI ChatBot, your smart buddy at Thapar University. From class schedules to campus updates, I've got the answers.\n\nWhat's the first thing you wanna know today?",
          isUser: false,
          timeStamp: DateTime.now().subtract(Duration(minutes: 10)),
          status: MessageStatus.sent,
        );
        
        messages.add(greeting);
        
        // If history exists and is not empty, add it after the intro
        if (history.isNotEmpty) {
          messages.addAll(history);
          emit(ChatState.success(messages: List.from(messages)));
          return;
        }
        
        // If history is empty, just show the intro message
        emit(ChatState.success(messages: List.from(messages)));
        
      } catch (e) {
        // If API call fails, show initial greeting as fallback
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
      }
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onSendMessage(event, emit) async {
    if (event.userMessage?.trim().isEmpty ?? true) return;
    // Add user message immediately
    final userMessage = ChatMessage(
      id: _generateMessageId(),
      message: event.userMessage!,
      isUser: true,
      timeStamp: DateTime.now(),
      status: MessageStatus.sending,
    );
    messages.add(userMessage);
    emit(ChatState.success(messages: List.from(messages)));
    // Show typing indicator
    emit(ChatState.typing(messages: List.from(messages)));
    try {
      final response = await chatRepo.sendMessage(
        chatId: currentUserId,
        message: event.userMessage!,
      );

      // Update user message status to sent
      final userMessageIndex = messages.indexWhere((m) => m.id == userMessage.id);
      if (userMessageIndex != -1) {
        messages[userMessageIndex] = userMessage.copyWith(status: MessageStatus.sent);
      }

      messages.add(response);
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      // Update user message status to failed
      final userMessageIndex = messages.indexWhere((m) => m.id == userMessage.id);
      if (userMessageIndex != -1) {
        messages[userMessageIndex] = userMessage.copyWith(status: MessageStatus.failed);
      }
      
      final errorMessage = ChatMessage(
        id: _generateMessageId(),
        message:
            "Sorry, I'm having trouble connecting right now. Please try again.",
        isUser: false,
        timeStamp: DateTime.now(),
        status: MessageStatus.sent,
      );
      messages.add(errorMessage);
      emit(ChatState.success(messages: List.from(messages)));
    }
  }

  void _onLoadChatHistory(event, emit) async {
    emit(ChatState.loading());
    try {
      final history = await chatRepo.getChatHistory(chatId: event.chatID);
      messages = history;
      currentUserId = event.chatID;
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onClearChat(event, emit) async {
    try {
      await chatRepo.clearChat(chatId: currentUserId);
      messages.clear();
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  String _generateUserId() => DateTime.now().millisecondsSinceEpoch.toString();
  String _generateMessageId() =>
      DateTime.now().microsecondsSinceEpoch.toString();
}
