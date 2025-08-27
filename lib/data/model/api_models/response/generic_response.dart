import 'package:freezed_annotation/freezed_annotation.dart';
part 'generic_response.freezed.dart';
part 'generic_response.g.dart';

@freezed
abstract class GenericResponse with _$GenericResponse {
  const factory GenericResponse({
    required String? message,
    required dynamic data,
  }) = _GenericResponse;

  factory GenericResponse.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseFromJson(json);
}
