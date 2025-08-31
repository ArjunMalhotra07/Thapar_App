import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: widget.searchController,
        decoration: InputDecoration(
          hintText: 'Search by name or category...',
          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
          suffixIcon: widget.searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: Colors.grey[500]),
                  onPressed: () {
                    widget.searchController.clear();
                    widget.clearButtonAction(); // call parent callback
                    setState(() {});
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onChanged: (query) {
          setState(() {});
          widget.onQueryChangeAction(query);
        },
      ),
    );
  }
}
