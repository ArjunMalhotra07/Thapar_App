import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/presentation/screens/home/home.dart';
import 'package:thaparapp/presentation/screens/auth/login_screen.dart';
import 'package:thaparapp/presentation/screens/onboarding/onboarding.dart';
import 'package:thaparapp/presentation/screens/splash/splash.dart';
import 'package:thaparapp/presentation/screens/splash/start_up.dart';
import 'package:thaparapp/presentation/constants/routes.dart';

class Routing {
  const Routing._();
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoute.onboarding,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text('Error: ${state.error}')));
    },
    routes: [
      GoRoute(
        path: AppRoute.startUp,
        builder: (context, state) => BlocProvider.value(
          value: locator<StartupBloc>(),
          child: const StartUpScreen(),
        ),
      ),
      GoRoute(
        path: AppRoute.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoute.login,
        builder: (context, state) => BlocProvider.value(
          value: locator<AuthBloc>(),
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: AppRoute.home,
        builder: (context, state) =>
            BlocProvider.value(value: locator<AuthBloc>(), child: HomeScreen()),
      ),
      GoRoute(
        path: AppRoute.onboarding,
        builder: (context, state) => OnboardingScreen(),
      ),
    ],
  );
}
