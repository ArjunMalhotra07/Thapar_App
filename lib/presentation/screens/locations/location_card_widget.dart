import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';

class LocationCardWidget extends StatelessWidget {
  final Location location;

  const LocationCardWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location name
            Text(
              location.name ?? 'Unknown Location',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),

            // Description
            if (location.description != null)
              Text(
                location.description!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
              ),

            SizedBox(height: 12),

            // Tags
            if (location.tags != null && location.tags!.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: location.tags!
                    .map(
                      (tag) => Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF4285F4).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4285F4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),

            SizedBox(height: 12),

            // Coordinates
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[500]),
                SizedBox(width: 4),
                Text(
                  'Lat: ${location.lat?.toStringAsFixed(4) ?? 'N/A'}, '
                  'Long: ${location.long?.toStringAsFixed(4) ?? 'N/A'}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
