import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';

class LocationsListWidget extends StatelessWidget {
  final List<Location> locations;
  final Future<void> Function() onRefresh;
  final Widget Function(Location) itemBuilder;

  const LocationsListWidget({
    super.key,
    required this.locations,
    required this.onRefresh,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final location = locations[index];
          return itemBuilder(location);
        },
      ),
    );
  }
}
