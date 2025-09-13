import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/data/repo/auth_repo.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';
import 'package:thaparapp/data/model/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  final StartupBloc initBloc;
  final StartupRepo startupRepo;

  User? user;
  String? jwtToken;

  AuthBloc({required this.authRepo, required this.initBloc, required this.startupRepo})
    : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_Login>(_onHitLogin);
    on<_Logout>(_onHitLogout);
  }

  void _onStarted(event, emit) async {
    try {
      // Load user data and JWT token from storage
      final storedUser = await startupRepo.fetchUser();
      final storedToken = await startupRepo.fetchToken();
      
      if (storedUser != null && storedToken != null) {
        // User is logged in, populate data in memory
        user = storedUser;
        jwtToken = storedToken;
        emit(AuthState.success(user: storedUser, msg: "Welcome back"));
      } else {
        // No stored user/token, user needs to login
        emit(AuthState.initial());
      }
    } catch (e) {
      emit(AuthState.failure(message: "Failed to load user data"));
    }
  }

  void _onHitLogin(event, emit) async {
    emit(AuthState.loading());
    try {
      final res = await authRepo.login(data: event.data);
      
      // Store JWT and refresh token (keeping for future use if needed)
      initBloc.save(res.jwt ?? "", res.refreshToken ?? "");
      
      // Store user data and JWT token separately
      if (res.user != null) {
        await startupRepo.storeUser(user: res.user!);
        user = res.user;
      }
      
      // Store JWT token for API calls
      if (res.jwt != null) {
        await startupRepo.storeToken(token: res.jwt!);
        jwtToken = res.jwt;
      }
      
      emit(AuthState.success(user: res.user, msg: res.message ?? "Welcome"));
    } catch (e) {
      emit(AuthState.failure(message: e.toString()));
    }
  }

  void _onHitLogout(event, emit) async {
    emit(AuthState.loading());
    
    // Clear JWT tokens
    initBloc.save('', '');
    
    // Clear user data
    await startupRepo.clearUserData();
    user = null;
    jwtToken = null;
    
    await Future.delayed(const Duration(milliseconds: 400));
    emit(AuthState.noUser(message: "Successfully logged out!"));
  }
}
