// ==================== EMPTY STATE WIDGET ====================
import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class EmptyStateWidget extends StatelessWidget {
  final String message;
  final bool showClearButton;
  final VoidCallback? onClear;

  const EmptyStateWidget({
    required this.message,
    required this.showClearButton,
    this.onClear,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_off, size: 64, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontFamily: AppFonts.gilroy,
            ),
            textAlign: TextAlign.center,
          ),
          if (showClearButton && onClear != null) ...[
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: onClear,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6B6B),
                foregroundColor: Colors.white,
              ),
              child: Text(
                'Clear Search',
                style: TextStyle(fontFamily: AppFonts.gilroy),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
