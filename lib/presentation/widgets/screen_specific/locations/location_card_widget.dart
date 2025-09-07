// ==================== UPDATED LOCATION CARD WIDGET ====================
import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=400&q=80',
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
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 12,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      location.category.toUpperCase(),
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

                  // Features tags
                  if (location.features != null && location.features!.isNotEmpty)
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: location.features
                          !.map(
                            (feature) => Container(
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
                                feature.toUpperCase(),
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle map view navigation
                        _showLocationOnMap(context, location);
                        // _launchUrl();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.locateUsTheme,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'View on Map',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.gilroy,
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

  void _showLocationOnMap(BuildContext context, Location location) async {
    // Check if location has valid coordinates
    if (location.latitude == null || location.longitude == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Location coordinates not available'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Use Google Maps URL with proper zoom level (17 = street level zoom)
    // Format: @latitude,longitude,zoomz where zoom=17z means zoom level 17
    final String mapsUrl =
        'https://www.google.com/maps/@${location.latitude},${location.longitude},17z';

    try {
      // Try launching with the simplest approach
      final Uri uri = Uri.parse(mapsUrl);
      final bool launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        // Fallback: try with platform default
        final bool launchedDefault = await launchUrl(
          uri,
          mode: LaunchMode.platformDefault,
        );

        if (!launchedDefault && context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not open Google Maps'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      // If url_launcher fails, show error
      if (context.mounted) {
        print('Error launching maps: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Unable to open maps. Error: ${e.toString()}',
              style: TextStyle(fontFamily: AppFonts.gilroy),
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
