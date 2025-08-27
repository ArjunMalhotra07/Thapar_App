part of 'startup_bloc.dart';

@freezed
class StartupEvent with _$StartupEvent {
  const factory StartupEvent.started() = _Started;
  const factory StartupEvent.checkJwtValidity({required String? jwt, required String? refreshToken}) = _CheckValidity;
  const factory StartupEvent.refreshToken({required String? refreshToken}) =_RefreshToken;
}
