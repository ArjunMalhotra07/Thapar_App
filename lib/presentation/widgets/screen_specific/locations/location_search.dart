// ==================== UPDATED SEARCH WIDGET ====================
import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class LocationSearchWidget extends StatefulWidget {
  final VoidCallback clearButtonAction;
  final ValueChanged<String> onQueryChangeAction;
  final TextEditingController searchController;

  const LocationSearchWidget({
    required this.searchController,
    required this.clearButtonAction,
    required this.onQueryChangeAction,
    super.key,
  });

  @override
  State<LocationSearchWidget> createState() => _LocationSearchWidgetState();
}

class _LocationSearchWidgetState extends State<LocationSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: TextField(
        controller: widget.searchController,
        style: TextStyle(fontFamily: AppFonts.gilroy),
        decoration: InputDecoration(
          hintText: 'Search Location or Categories...',
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 16,
            fontFamily: AppFonts.gilroy,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey[500], size: 24),
          suffixIcon: widget.searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: Colors.grey[500]),
                  onPressed: () {
                    widget.searchController.clear();
                    widget.clearButtonAction();
                    setState(() {});
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        onChanged: (query) {
          setState(() {});
          widget.onQueryChangeAction(query);
        },
      ),
    );
  }
}
