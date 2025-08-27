import 'package:freezed_annotation/freezed_annotation.dart';
part 'verifytoken.freezed.dart';
part 'verifytoken.g.dart';

@freezed
abstract class VerifyTokenResponse with _$VerifyTokenResponse {
  const factory VerifyTokenResponse({
    required String? message,
    required bool? valid,
    @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "expires_in") required int? expiresIn,
  }) = _VerifyTokenResponse;

  factory VerifyTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyTokenResponseFromJson(json);
}
