import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/data/repo/auth_repo.dart';
import 'package:thaparapp/data/model/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  final StartupBloc initBloc;

  User? user;

  AuthBloc({required this.authRepo, required this.initBloc})
    : super(_Initial()) {
    on<_Login>(_onHitLogin);
    on<_Logout>(_onHitLogout);
  }

  void _onHitLogin(event, emit) async {
    emit(AuthState.loading());
    try {
      final res = await authRepo.login(data: event.data);
      initBloc.save(res.jwt ?? "", res.refreshToken ?? "");
      emit(AuthState.success(user: user, msg: res.message ?? "Welcome"));
    } catch (e) {
      emit(AuthState.failure(message: e.toString()));
    }
  }

  void _onHitLogout(event, emit) async {
    emit(AuthState.loading());
    initBloc.save('', '');
    await Future.delayed(const Duration(milliseconds: 400));
    emit(AuthState.noUser(message: "Successfully logged out!"));
  }
}
