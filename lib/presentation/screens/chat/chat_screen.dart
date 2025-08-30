import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/chat/chat_message.dart';
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

  // Local chat data - replace with BLoC later
  final List<ChatMessage> _messages = [
    ChatMessage(
      id: '1',
      message:
          'Hey, I\'m AI ChatBot, your smart buddy at Thapar University. From class schedules to campus updates, I\'ve got the answers.',
      isUser: false,
      timeStamp: DateTime.now().subtract(Duration(minutes: 5)),
      status: null,
    ),
    ChatMessage(
      id: '2',
      message: 'What\'s the first thing you wanna know today?',
      isUser: false,
      timeStamp: DateTime.now().subtract(Duration(minutes: 4)),
      status: null,
    ),
    ChatMessage(
      id: '3',
      message:
          'Who is the founder of Thapar University and when was it established?',
      isUser: true,
      timeStamp: DateTime.now().subtract(Duration(minutes: 3)),
      status: null,
    ),
    ChatMessage(
      id: '4',
      message:
          'Thapar University (TIU) was founded in 1956 by Late Karam Chand Thapar, a visionary industrialist and philanthropist.',
      isUser: false,
      timeStamp: DateTime.now().subtract(Duration(minutes: 2)),
      status: null,
    ),
  ];

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    setState(() {
      _messages.add(
        ChatMessage(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          message: _messageController.text.trim(),
          isUser: true,
          timeStamp: DateTime.now(),
          status: null,
        ),
      );
    });

    _messageController.clear();
    _scrollToBottom();

    // Simulate AI response (replace with BLoC call)
    _simulateAIResponse();
  }

  void _simulateAIResponse() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _messages.add(
            ChatMessage(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              message:
                  'Thanks for your question! I\'m processing your request...',
              isUser: false,
              timeStamp: DateTime.now(),
              status: null,
            ),
          );
        });
        _scrollToBottom();
      }
    });
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
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: AppColor.aiChatBotTheme, // Blue color from design
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
                Text(
                  'Get Answers | I\'m here for you!',
                  style: TextStyle(
                    fontFamily: AppFonts.gilroy,
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
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
                // Replace with: Image.asset('assets/images/ai_avatar.png')
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //! Chat messages list
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              reverse: true, // This makes messages start from bottom
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                // Reverse the index to show latest messages at bottom
                final message = _messages[_messages.length - 1 - index];
                return MessageBubble(message: message);
              },
            ),
          ),
          //! Message input area
          MessageKeyboard(onSend: _sendMessage, controller: _messageController),
        ],
      ),
    );
  }
}
