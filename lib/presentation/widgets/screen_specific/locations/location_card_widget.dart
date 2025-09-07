// ==================== UPDATED LOCATION CARD WIDGET ====================
import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class LocationCardWidget extends StatelessWidget {
  final Location location;

  const LocationCardWidget({required this.location, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with category tag
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        location.imageUrl ??
                            'https://via.placeholder.com/400x180',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Category tag positioned in top right
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      'GENERAL',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 0.5,
                        fontFamily: AppFonts.gilroy,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Content section
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Location name
                  Text(
                    location.name ?? 'Unknown Location',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                  SizedBox(height: 8),

                  // Tags
                  if (location.category.isNotEmpty)
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: location.category
                          .map(
                            (tag) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Color(0xFFFF6B6B),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                tag.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: AppFonts.gilroy,
                                  fontSize: 12,
                                  color: Color(0xFFFF6B6B),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),

                  SizedBox(height: 16),

                  // View on Map button
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle map view navigation
                        _showLocationOnMap(context, location);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF6B6B),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'View on Map',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLocationOnMap(BuildContext context, Location location) {
    // Handle map navigation here
    print(
      'Opening map for ${location.name} at ${location.latitude}, ${location.longitude}',
    );

    // You can integrate with maps here:
    // - Google Maps
    // - Apple Maps
    // - Custom map screen

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Open Map'),
        content: Text(
          'Opening ${location.name} on map\nCoordinates: ${location.latitude}, ${location.longitude}',
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
