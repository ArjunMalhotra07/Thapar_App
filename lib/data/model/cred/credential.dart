import 'package:freezed_annotation/freezed_annotation.dart';
part 'credential.freezed.dart';
part 'credential.g.dart';

@freezed
abstract class Credential with _$Credential {
  const factory Credential({
    required String? jwt,
    required String? refreshToken,
  }) = _Credential;

  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);
}
