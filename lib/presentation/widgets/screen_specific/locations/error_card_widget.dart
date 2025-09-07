import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

// ==================== ERROR STATE WIDGET ====================
class ErrorStateWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ErrorStateWidget({
    required this.message,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
          SizedBox(height: 16),
          Text(
            'Error: $message',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontFamily: AppFonts.gilroy,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF6B6B),
              foregroundColor: Colors.white,
            ),
            child: Text('Retry', style: TextStyle(fontFamily: AppFonts.gilroy)),
          ),
        ],
      ),
    );
  }
}
