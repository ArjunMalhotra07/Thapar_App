// ==================== ITEM DETAILS BOTTOM SHEET ====================
// presentation/widgets/screen_specific/lost_found/lost_found_item_details_sheet.dart
import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class LostFoundItemDetailsSheet extends StatelessWidget {
  final LostFoundItem item;

  const LostFoundItemDetailsSheet({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=400',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Title
                  Text(
                    item.name ?? "",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),

                  SizedBox(height: 8),

                  // Location
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFFFDB952).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      item.location ?? "",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFDB952),
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFonts.gilroy,
                      ),
                    ),
                  ),

                  SizedBox(height: 16),

                  // Properties
                  Text(
                    item.properties ?? "",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontFamily: AppFonts.gilroy,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 20),

                  // Collect info
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Collection Information',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Collect from: LOST & FOUND Dept.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Found on: ${_formatDate(item.date ?? DateTime.now())}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Contact button
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle contact action
                  Navigator.pop(context);
                  _showContactDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFDB952),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Contact Lost & Found',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: AppFonts.gilroy,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  void _showContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Contact Information'),
        content: Text(
          'Please visit the Lost & Found Department during office hours to collect your item.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
