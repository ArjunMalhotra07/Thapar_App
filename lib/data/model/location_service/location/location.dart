import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String? id,
    required String? name,
    required String? description,
    required List<String>? tags,
    required double? lat,
    required double? long,
    String? imageUrl,
    String? category,
    bool? isActive,
  }) = _Location;
  
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}