part of 'locations_bloc.dart';

@freezed
class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.started() = _Started;
  const factory LocationsEvent.fetchLocations() = _FetchLocations;
  const factory LocationsEvent.searchLocations({required String query}) = _SearchLocations;
  const factory LocationsEvent.clearSearch() = _ClearSearch;
  const factory LocationsEvent.refreshLocations() = _RefreshLocations;
}