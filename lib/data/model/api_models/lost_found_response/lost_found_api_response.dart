import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';

part 'lost_found_api_response.freezed.dart';
part 'lost_found_api_response.g.dart';

@freezed
class LostFoundApiResponse with _$LostFoundApiResponse {
  const factory LostFoundApiResponse({
    required bool success,
    required int count,
    required List<LostFoundItem> data,
    String? error,
    String? details,
  }) = _LostFoundApiResponse;
  
  factory LostFoundApiResponse.fromJson(Map<String, dynamic> json) => 
      _$LostFoundApiResponseFromJson(json);
}