import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/locations/locations_bloc.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';

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
              _buildSearchBar(context),
              
              // Content
              Expanded(
                child: state.when(
                  initial: () => Center(child: Text('Ready to load locations')),
                  loading: () => Center(child: CircularProgressIndicator()),
                  success: (locations, searchQuery) => _buildLocationsList(locations, searchQuery),
                  empty: (message) => _buildEmptyState(message),
                  failure: (message) => _buildErrorState(message, context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
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
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search by name or category...',
          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
          suffixIcon: _searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: Colors.grey[500]),
                  onPressed: () {
                    _searchController.clear();
                    context.read<LocationsBloc>().add(LocationsEvent.clearSearch());
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
          setState(() {}); // To update suffixIcon
          context.read<LocationsBloc>().add(
            LocationsEvent.searchLocations(query: query),
          );
        },
      ),
    );
  }

  Widget _buildLocationsList(List<Location> locations, String searchQuery) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<LocationsBloc>().add(LocationsEvent.refreshLocations());
      },
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final location = locations[index];
          return _buildLocationCard(location);
        },
      ),
    );
  }

  Widget _buildLocationCard(Location location) {
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
                children: location.tags!.map((tag) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                )).toList(),
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
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_off, size: 64, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          if (_searchController.text.isNotEmpty) ...[
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _searchController.clear();
                context.read<LocationsBloc>().add(LocationsEvent.clearSearch());
              },
              child: Text('Clear Search'),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildErrorState(String message, BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
          SizedBox(height: 16),
          Text(
            'Error: $message',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<LocationsBloc>().add(LocationsEvent.fetchLocations());
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}
