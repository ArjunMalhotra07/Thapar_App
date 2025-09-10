// ==================== SEARCH WIDGET ====================
// presentation/widgets/screen_specific/lost_found/lost_found_search_widget.dart
import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class LostFoundSearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  final ValueChanged<String> onSearchChanged;

  const LostFoundSearchWidget({
    required this.searchController,
    required this.onSearchChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade400, width: 2),
      ),
      child: TextField(
        controller: searchController,
        onChanged: onSearchChanged,
        decoration: InputDecoration(
          hintText: 'Lost something? Search here...',
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 16,
            fontFamily: AppFonts.gilroy,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey[500], size: 24),
          suffixIcon: searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: Colors.grey[500]),
                  onPressed: () {
                    searchController.clear();
                    onSearchChanged('');
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    );
  }
}
