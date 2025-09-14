import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/chat/chat_bloc.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/chat/message_bubble.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/chat/message_keyboard.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late ChatBloc _chatBloc;
  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = locator<ChatBloc>();
    _authBloc = locator<AuthBloc>();
    
    // Get current user ID from AuthBloc
    final userId = _authBloc.user?.id?.toString() ?? _generateUserId();
    
    // Only initialize if chat hasn't been loaded yet
    _chatBloc.state.when(
      initial: () => _chatBloc.add(ChatEvent.initializeChat(chatID: userId)),
      loading: () {},
      typing: (_) {},
      success: (_) {},
      failure: (_) => _chatBloc.add(ChatEvent.initializeChat(chatID: userId)),
    );
  }

  String _generateUserId() => DateTime.now().millisecondsSinceEpoch.toString();

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    _chatBloc.add(ChatEvent.sendMessage(userMessage: _messageController.text.trim()));
    _messageController.clear();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          0.0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _chatBloc,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: AppColor.aiChatBotTheme,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AI ChatBot',
                    style: TextStyle(
                      fontFamily: AppFonts.gilroy,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return Text(
                        state.maybeWhen(
                          typing: (_) => 'Typing...',
                          loading: () => 'Loading...',
                          orElse: () => 'Get Answers | I\'m here for you!',
                        ),
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 12),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.smart_toy,
                    color: Color(0xFF4285F4),
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => Center(
                      child: Text(
                        'Starting chat...',
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    ),
                    loading: () => Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColor.aiChatBotTheme,
                        ),
                      ),
                    ),
                    typing: (messages) => _buildMessagesList(messages, isTyping: true),
                    success: (messages) => _buildMessagesList(messages),
                    failure: (errorMessage) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 48,
                            color: Colors.red[400],
                          ),
                          SizedBox(height: 16),
                          Text(
                            errorMessage ?? 'Something went wrong',
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              color: Colors.red[600],
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              final userId = _authBloc.user?.id?.toString() ?? _generateUserId();
                              _chatBloc.add(ChatEvent.initializeChat(chatID: userId));
                            },
                            child: Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            MessageKeyboard(onSend: _sendMessage, controller: _messageController),
          ],
        ),
      ),
    );
  }

  Widget _buildMessagesList(List<ChatMessage> messages, {bool isTyping = false}) {
    return ListView.builder(
      controller: _scrollController,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: messages.length + (isTyping ? 1 : 0),
      itemBuilder: (context, index) {
        if (isTyping && index == 0) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                SizedBox(width: 12),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColor.aiChatBotTheme,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'AI is typing...',
                  style: TextStyle(
                    fontFamily: AppFonts.gilroy,
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          );
        }
        
        final messageIndex = isTyping ? index - 1 : index;
        final message = messages[messages.length - 1 - messageIndex];
        return MessageBubble(message: message);
      },
    );
  }
}
