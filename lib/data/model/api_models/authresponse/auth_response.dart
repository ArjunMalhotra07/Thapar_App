import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String? message,
   @JsonKey(name:"access_token") required String? jwt,
   @JsonKey(name: "refresh_token") required String? refreshToken,
    required dynamic data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
 