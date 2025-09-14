import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/model/user/user.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';

part 'startup_event.dart';
part 'startup_state.dart';
part 'startup_bloc.freezed.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  final StartupRepo startupRepo;
  Credential cred = Credential(jwt: '', refreshToken: '');
  StartupBloc({required this.startupRepo}) : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_CheckValidity>(_onCheckValidity);
    on<_RefreshToken>(_onRefreshToken);
  }

  void _onStarted(event, emit) async {
    try {
      emit(const StartupState.processing());
      await Future.delayed(Duration(milliseconds: 1400));
      // Check if we have a stored user and token
      final user = await startupRepo.fetchUser();
      final token = await startupRepo.fetchToken();

      if (user != null && token != null) {
        // User data and token exist, they're logged in
        emit(StartupState.validUser(user: user));
      } else {
        // No user data or token, they need to login
        emit(StartupState.freshUser());
      }
    } catch (e) {
      emit(StartupState.failure(message: e.toString()));
    }
  }

  void _onCheckValidity(event, emit) async {
    emit(const StartupState.processing());
    try {
      VerifyTokenResponse res = await startupRepo.checkValidity(
        bearerToken: event.jwt ?? "",
      );
      if (res.expiresIn! < 300 || res.valid == false) {
        // Token expires in less than 5 minutes, refresh it
        add(StartupEvent.refreshToken(refreshToken: event.refreshToken));
        return; // Don't emit validUser yet, wait for refresh
      }
      emit(
        StartupState.validUser(
          user: User(
            name: "name",
            email: "email",
            id: res.userId,
            userId: '',
            gender: '',
            category: '',
          ),
        ),
      );
    } catch (e) {
      // JWT is invalid/expired, try refresh token
      if (event.refreshToken?.isNotEmpty == true) {
        add(StartupEvent.refreshToken(refreshToken: event.refreshToken));
      } else {
        emit(StartupState.freshUser());
      }
    }
  }

  Future<AuthResponse?> _onRefreshToken(event, emit) async {
    emit(const StartupState.processing());
    try {
      final res = await startupRepo.refreshAccessToken(
        bearerToken: event.refreshToken ?? "",
      );
      await save(res.jwt ?? "", res.refreshToken ?? "");
      emit(
        StartupState.validUser(
          user: User(
            email: "",
            name: "",
            id: '',
            userId: '',
            gender: '',
            category: '',
          ),
        ),
      );
    } catch (e) {
      emit(StartupState.loggedOutUser(msg: ''));
    }
    return null;
  }

  Future<void> save(String jwt, String refreshToken) async {
    cred = cred.copyWith(jwt: jwt, refreshToken: refreshToken);
    await startupRepo.storeCredentials(cred: cred);
  }
}
