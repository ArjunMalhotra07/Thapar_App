import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final String message;
  final bool showClearButton;
  final VoidCallback? onClear;

  const EmptyStateWidget({
    super.key,
    required this.message,
    this.showClearButton = false,
    this.onClear,
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
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          if (showClearButton && onClear != null) ...[
            SizedBox(height: 16),
            ElevatedButton(onPressed: onClear, child: Text('Clear Search')),
          ],
        ],
      ),
    );
  }
}
