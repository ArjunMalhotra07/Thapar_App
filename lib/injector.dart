import 'package:get_it/get_it.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/data/provider/auth/auth_imp.dart';
import 'package:thaparapp/data/provider/startup/startup_imp.dart';
import 'package:thaparapp/data/provider/startup/startup_local.dart';
import 'package:thaparapp/data/repo/auth_repo.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/network/network_api_service.dart';

final locator = GetIt.instance;
void init() {
  // Register NetworkApiService without StartupRepo first (for initial services)
  locator.registerLazySingleton<BaseApiService>(
    () => NetworkApiService(),
    instanceName: 'base',
  );
  // Register StartupRepo with the base service
  locator.registerLazySingleton<StartupRepo>(
    () => StartupRepo(
      // startupProvider: StartupImp(
      //   service: locator<BaseApiService>(instanceName: 'base'),
      // ),
      startupProvider: StartupLocal(),
    ),
  );
  // Register NetworkApiService with StartupRepo for auth interceptor
  locator.registerLazySingleton<BaseApiService>(
    () => NetworkApiService(startupRepo: locator<StartupRepo>()),
  );
  // Register StartupBloc with its dependencies
  locator.registerLazySingleton<StartupBloc>(
    () => StartupBloc(startupRepo: locator<StartupRepo>()),
  );
  // Register AuthBloc with its dependencies
  locator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      authRepo: AuthRepo(
        authProvider: AuthImp(apiService: locator<BaseApiService>()),
      ),
      initBloc: locator<StartupBloc>(),
    ),
  );
}
