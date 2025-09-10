// ==================== MODELS ====================
// data/models/lost_found_item.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lost_found_item.freezed.dart';
part 'lost_found_item.g.dart';

@freezed
class LostFoundItem with _$LostFoundItem {
  const factory LostFoundItem({
    required int? id,
    required String? title,
    required String? description,
    required String? location,
    required String? collectFrom,
    required String? imageUrl,
    required DateTime? dateFound,
    required LostFoundType? type,
  }) = _LostFoundItem;

  factory LostFoundItem.fromJson(Map<String, dynamic> json) =>
      _$LostFoundItemFromJson(json);
}

enum LostFoundType { lost, found }
