part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success({required User? user, required String msg}) = _Success;
  const factory AuthState.failure({required String message}) = _Failure;
  const factory AuthState.noUser({required String message}) = _NoUser;
}
