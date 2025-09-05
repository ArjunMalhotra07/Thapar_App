import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/locations/locations_bloc.dart';
import 'package:thaparapp/presentation/screens/locations/empty_card_state.dart';
import 'package:thaparapp/presentation/screens/locations/error_card_widget.dart';
import 'package:thaparapp/presentation/screens/locations/location_card_widget.dart';
import 'package:thaparapp/presentation/screens/locations/locations_list.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/locations/search_bar.dart';

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
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Color(0xFF4285F4),
        elevation: 0,
        title: Text(
          'University Locations',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocBuilder<LocationsBloc, LocationsState>(
        builder: (context, state) {
          return Column(
            children: [
              // Search Bar
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

              // Content
              Expanded(
                child: state.when(
                  initial: () => Center(child: Text('Ready to load locations')),
                  loading: () => Center(child: CircularProgressIndicator()),
                  success: (locations, searchQuery, count) => LocationsListWidget(
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
