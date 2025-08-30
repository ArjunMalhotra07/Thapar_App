import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class MessageKeyboard extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;
  const MessageKeyboard({
    required this.onSend,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16), // Add margin to make it float
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    style: TextStyle(fontFamily: AppFonts.gilroy),
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle: TextStyle(
                        fontFamily: AppFonts.gilroy,
                        color: Colors.grey[500],
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    maxLines: 3,
                    minLines: 1,
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
              ),
              SizedBox(width: 8),
              GestureDetector(
                onTap: onSend,
                child: Container(
                  width: 44,
                  height: 44,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.aiChatBotTheme,
                    borderRadius: BorderRadius.circular(
                      12,
                    ), // Rounded edges, not circular
                  ),
                  child: Icon(Icons.send, color: Colors.white, size: 20),
                  // Replace with: Image.asset('assets/images/send_button.png')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
