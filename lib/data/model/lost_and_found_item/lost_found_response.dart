import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';

part 'lost_found_response.freezed.dart';
part 'lost_found_response.g.dart';

@freezed
class LostFoundResponse with _$LostFoundResponse {
  const factory LostFoundResponse({
    required List<LostFoundItem> items,
  }) = _LostFoundResponse;

  factory LostFoundResponse.fromJson(Map<String, dynamic> json) =>
      _$LostFoundResponseFromJson(json);
}