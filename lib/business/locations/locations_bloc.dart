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

  LocationsBloc({required this.locationsRepo})
    : super(const LocationsState.initial()) {
    on<_FetchLocations>(_onFetchLocations);
    on<_SearchLocations>(_onSearchLocations);
    on<_ClearSearch>(_onClearSearch);
    on<_RefreshLocations>(_onRefreshLocations);
  }

  void _onFetchLocations(
    _FetchLocations event,
    Emitter<LocationsState> emit,
  ) async {
    emit(LocationsState.loading());
    try {
      final response = await locationsRepo.fetchLocations();
      allLocations = response.locations;
      filteredLocations = List.from(allLocations);

      if (allLocations.isEmpty) {
        emit(LocationsState.empty(message: "No locations found"));
      } else {
        emit(
          LocationsState.success(
            locations: List.from(filteredLocations),
            searchQuery: currentSearchQuery,
            count: response.count,
          ),
        );
      }
    } catch (e) {
      emit(LocationsState.failure(message: e.toString()));
    }
  }

  void _onSearchLocations(
    _SearchLocations event,
    Emitter<LocationsState> emit,
  ) async {
    currentSearchQuery = event.query.toLowerCase();

    if (currentSearchQuery.isEmpty) {
      filteredLocations = List.from(allLocations);
    } else {
      filteredLocations = allLocations.where((location) {
        final nameMatch =
            location.name?.toLowerCase().contains(currentSearchQuery) ?? false;
        final descriptionMatch =
            location.description?.toLowerCase().contains(currentSearchQuery) ??
            false;
        final features = location.features.any(
          (cat) => cat.toLowerCase().contains(currentSearchQuery),
        );
        final category = location.category.toLowerCase().contains(
          currentSearchQuery,
        );

        return nameMatch || descriptionMatch || features || category;
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
          count: filteredLocations.length,
        ),
      );
    }
  }

  void _onClearSearch(_ClearSearch event, Emitter<LocationsState> emit) async {
    currentSearchQuery = '';
    filteredLocations = List.from(allLocations);

    emit(
      LocationsState.success(
        locations: List.from(filteredLocations),
        searchQuery: currentSearchQuery,
        count: filteredLocations.length,
      ),
    );
  }

  void _onRefreshLocations(
    _RefreshLocations event,
    Emitter<LocationsState> emit,
  ) async {
    // Don't show loading for refresh, just update silently
    try {
      final response = await locationsRepo.fetchLocations();
      allLocations = response.locations;

      // Reapply current search if any
      if (currentSearchQuery.isNotEmpty) {
        add(LocationsEvent.searchLocations(query: currentSearchQuery));
      } else {
        filteredLocations = List.from(allLocations);
        emit(
          LocationsState.success(
            locations: List.from(filteredLocations),
            searchQuery: currentSearchQuery,
            count: filteredLocations.length,
          ),
        );
      }
    } catch (e) {
      emit(LocationsState.failure(message: e.toString()));
    }
  }
}
