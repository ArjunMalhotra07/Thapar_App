part of 'lost_and_found_bloc.dart';

@freezed
class LostAndFoundState with _$LostAndFoundState {
  const factory LostAndFoundState.initial() = _Initial;
  const factory LostAndFoundState.loading() = _Loading;
  const factory LostAndFoundState.success({
    required List<LostFoundItem> items,
    required String searchQuery,
    required LostFoundType? filterType,
    required int count,
  }) = _Success;
  const factory LostAndFoundState.empty({required String message}) = _Empty;
  const factory LostAndFoundState.failure({required String message}) = _Failure;
}