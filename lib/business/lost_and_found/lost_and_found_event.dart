part of 'lost_and_found_bloc.dart';

@freezed
class LostAndFoundEvent with _$LostAndFoundEvent {
  const factory LostAndFoundEvent.started() = _Started;
  const factory LostAndFoundEvent.fetchItems() = _FetchItems;
  const factory LostAndFoundEvent.searchItems({required String query}) = _SearchItems;
  const factory LostAndFoundEvent.clearSearch() = _ClearSearch;
  const factory LostAndFoundEvent.refreshItems() = _RefreshItems;
  const factory LostAndFoundEvent.filterByType({required LostFoundType? type}) = _FilterByType;
}