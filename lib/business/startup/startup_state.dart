part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState.initial() = _Initial;
  const factory StartupState.processing() = _Processing;
  const factory StartupState.freshUser() = _FreshUser;
  const factory StartupState.validUser({required User? user}) = _ValidUser;
  const factory StartupState.loggedOutUser({required String msg}) =
      _LoggedOutUser;
  const factory StartupState.failure({required String message}) = _Failure;

}
