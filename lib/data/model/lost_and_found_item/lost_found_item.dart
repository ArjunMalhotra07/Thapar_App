// ==================== MODELS ====================
// data/models/lost_found_item.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lost_found_item.freezed.dart';
part 'lost_found_item.g.dart';

@freezed
class LostFoundItem with _$LostFoundItem {
  const factory LostFoundItem({
    required int? id,
    required String? name,
    required String? properties,
    required String? color,
    required String? imageUrl,
    required String? location,
    required DateTime? date,
    // required LostFoundType? type,
  }) = _LostFoundItem;

  factory LostFoundItem.fromJson(Map<String, dynamic> json) =>
      _$LostFoundItemFromJson(json);
}
