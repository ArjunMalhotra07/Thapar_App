import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/data/repo/locations_repo.dart';

part 'locations_event.dart';
part 'locations_state.dart';
part 'locations_bloc.freezed.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final LocationsRepo locationsRepo;

  List<Location> allLocations = [];
  List<Location> filteredLocations = [];
  String currentSearchQuery = '';

  LocationsBloc({required this.locationsRepo}) : super(_Initial()) {
    on<_FetchLocations>(_onFetchLocations);
    on<_SearchLocations>(_onSearchLocations);
    on<_ClearSearch>(_onClearSearch);
    on<_RefreshLocations>(_onRefreshLocations);
  }

  void _onFetchLocations(_FetchLocations event, emit) async {
    emit(LocationsState.loading());
    try {
      final response = await locationsRepo.fetchLocations();
      allLocations = response.locations ?? [];
      filteredLocations = List.from(allLocations);

      if (allLocations.isEmpty) {
        emit(LocationsState.empty(message: "No locations found"));
      } else {
        emit(
          LocationsState.success(
            locations: List.from(filteredLocations),
            searchQuery: currentSearchQuery,
          ),
        );
      }
    } catch (e) {
      emit(LocationsState.failure(message: e.toString()));
    }
  }

  void _onSearchLocations(_SearchLocations event, emit) async {
    currentSearchQuery = event.query.toLowerCase();

    if (currentSearchQuery.isEmpty) {
      filteredLocations = List.from(allLocations);
    } else {
      filteredLocations = allLocations.where((location) {
        final nameMatch =
            location.name?.toLowerCase().contains(currentSearchQuery) ?? false;
        final categoryMatch =
            location.category?.toLowerCase().contains(currentSearchQuery) ??
            false;
        final tagsMatch =
            location.tags?.any(
              (tag) => tag.toLowerCase().contains(currentSearchQuery),
            ) ??
            false;

        return nameMatch || categoryMatch || tagsMatch;
      }).toList();
    }

    if (filteredLocations.isEmpty && currentSearchQuery.isNotEmpty) {
      emit(
        LocationsState.empty(
          message: "No locations found for '$currentSearchQuery'",
        ),
      );
    } else {
      emit(
        LocationsState.success(
          locations: List.from(filteredLocations),
          searchQuery: currentSearchQuery,
        ),
      );
    }
  }

  void _onClearSearch(_ClearSearch event, emit) async {
    currentSearchQuery = '';
    filteredLocations = List.from(allLocations);

    emit(
      LocationsState.success(
        locations: List.from(filteredLocations),
        searchQuery: currentSearchQuery,
      ),
    );
  }

  void _onRefreshLocations(_RefreshLocations event, emit) async {
    // Don't show loading for refresh, just update silently
    try {
      final response = await locationsRepo.fetchLocations();
      allLocations = response.locations ?? [];

      // Reapply current search if any
      if (currentSearchQuery.isNotEmpty) {
        add(LocationsEvent.searchLocations(query: currentSearchQuery));
      } else {
        filteredLocations = List.from(allLocations);
        emit(
          LocationsState.success(
            locations: List.from(filteredLocations),
            searchQuery: currentSearchQuery,
          ),
        );
      }
    } catch (e) {
      emit(LocationsState.failure(message: e.toString()));
    }
  }
}
