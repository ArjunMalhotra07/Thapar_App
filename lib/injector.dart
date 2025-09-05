import 'package:get_it/get_it.dart';
import 'package:thaparapp/business/chat/chat_bloc.dart';
import 'package:thaparapp/business/locations/locations_bloc.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/data/provider/auth/auth_local.dart';
import 'package:thaparapp/data/provider/chat/chat_imp.dart';
import 'package:thaparapp/data/provider/locations/locations_imp.dart';
import 'package:thaparapp/data/provider/startup/startup_local.dart';
import 'package:thaparapp/data/repo/auth_repo.dart';
import 'package:thaparapp/data/repo/chat_repo.dart';
import 'package:thaparapp/data/repo/locations_repo.dart';
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
  //! StartupRepo
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
  //! StartupBloc
  locator.registerLazySingleton<StartupBloc>(
    () => StartupBloc(startupRepo: locator<StartupRepo>()),
  );
  //! AuthBloc
  locator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      authRepo: AuthRepo(
        // authProvider: AuthImp(apiService: locator<BaseApiService>()),
        authProvider: AuthLocal(),
      ),
      initBloc: locator<StartupBloc>(),
    ),
  );
  //! Location
  locator.registerLazySingleton<LocationsBloc>(
    () => LocationsBloc(
      locationsRepo: LocationsRepo(
        locationsProvider: LocationsApiProvider(service: locator<BaseApiService>()),
      ),
    ),
  );
  //! Chat
  locator.registerLazySingleton<ChatBloc>(
    () => ChatBloc(
      chatRepo: ChatRepo(
        chatProvider: ChatApiProvider(service: locator<BaseApiService>()),
      ),
    ),
  );
}
