import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/locations/locations_bloc.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/locations/empty_card_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/locations/error_card_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/locations/location_card_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/locations/location_search.dart';

// ==================== UPDATED LOCATIONS SCREEN ====================
class LocationsScreen extends StatefulWidget {
  const LocationsScreen({super.key});

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<LocationsBloc>().add(const LocationsEvent.fetchLocations());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColor.locateUsTheme, // Coral/salmon background like figma
      appBar: AppBar(
        backgroundColor: AppColor.locateUsTheme,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Locate Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: AppFonts.gilroy,
              ),
            ),
            Text(
              'Explore every corner of your campus.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.gilroy,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.location_on, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar with white container
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  LocationSearchWidget(
                    searchController: _searchController,
                    clearButtonAction: () {
                      context.read<LocationsBloc>().add(
                        LocationsEvent.clearSearch(),
                      );
                    },
                    onQueryChangeAction: (query) {
                      context.read<LocationsBloc>().add(
                        LocationsEvent.searchLocations(query: query),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  // Content inside the white container
                  Expanded(
                    child: BlocBuilder<LocationsBloc, LocationsState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () =>
                              Center(child: Text('Ready to load locations')),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          success: (locations, searchQuery, count) =>
                              LocationsListWidget(
                                locations: locations,
                                onRefresh: () async {
                                  context.read<LocationsBloc>().add(
                                    LocationsEvent.refreshLocations(),
                                  );
                                },
                                itemBuilder: (location) =>
                                    LocationCardWidget(location: location),
                              ),
                          empty: (message) => EmptyStateWidget(
                            message: message,
                            showClearButton: _searchController.text.isNotEmpty,
                            onClear: () {
                              _searchController.clear();
                              context.read<LocationsBloc>().add(
                                LocationsEvent.clearSearch(),
                              );
                            },
                          ),
                          failure: (message) => ErrorStateWidget(
                            message: message,
                            onRetry: () {
                              context.read<LocationsBloc>().add(
                                LocationsEvent.fetchLocations(),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== LOCATIONS LIST WIDGET ====================
class LocationsListWidget extends StatelessWidget {
  final List<Location> locations;
  final Future<void> Function() onRefresh;
  final Widget Function(Location) itemBuilder;

  const LocationsListWidget({
    required this.locations,
    required this.onRefresh,
    required this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        // Remove default padding since we're inside white container
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final location = locations[index];
          return itemBuilder(location);
        },
      ),
    );
  }
}
