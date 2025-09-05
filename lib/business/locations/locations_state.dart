part of 'locations_bloc.dart';

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState.initial() = _Initial;
  const factory LocationsState.loading() = _Loading;
  const factory LocationsState.success({
    required List<Location> locations,
    required String searchQuery,
    required int count,
  }) = _Success;
  const factory LocationsState.empty({required String message}) = _Empty;
  const factory LocationsState.failure({required String message}) = _Failure;
}
