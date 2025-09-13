import 'package:freezed_annotation/freezed_annotation.dart';

part 'lost_found_api_response.freezed.dart';
part 'lost_found_api_response.g.dart';

@freezed
class LostFoundApiItem with _$LostFoundApiItem {
  const factory LostFoundApiItem({
    @JsonKey(name: '_id') String? id,
    required String? name,
    required String? properties,
    required String? createdAt,
    String? location,
    String? imageUrl,
    String? color,
    String? contact,
    String? date,
  }) = _LostFoundApiItem;

  factory LostFoundApiItem.fromJson(Map<String, dynamic> json) =>
      _$LostFoundApiItemFromJson(json);
}

@freezed
class LostFoundApiResponse with _$LostFoundApiResponse {
  const factory LostFoundApiResponse({
    required bool success,
    required int count,
    required List<LostFoundApiItem> data,
    String? error,
    String? details,
  }) = _LostFoundApiResponse;
  
  factory LostFoundApiResponse.fromJson(Map<String, dynamic> json) => 
      _$LostFoundApiResponseFromJson(json);
}