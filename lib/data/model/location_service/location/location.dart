import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required int id,
    required String? name,
    required String? description,
    required String category,
    required double? latitude,
    required double? longitude,
    required DateTime? createdAt,
    required String? imageUrl,
    required List<String> features,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
