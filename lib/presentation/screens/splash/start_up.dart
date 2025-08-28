import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/presentation/screens/onboarding/onboarding.dart';
import 'package:thaparapp/presentation/screens/splash/splash.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
// ...existing imports...

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StartupBloc>().add(const StartupEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<StartupBloc, StartupState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            failure: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.message),
                  backgroundColor: Colors.red,
                ),
              );
              GoRouter.of(context).go(AppRoute.login);
            },
            freshUser: (value) {
              GoRouter.of(context).go(AppRoute.onboarding);
            },
            loggedOutUser: (value) {
              GoRouter.of(context).go(AppRoute.login);
            },
            validUser: (value) {
              GoRouter.of(context).go(AppRoute.home);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(orElse: () => const SplashScreen());
        },
      ),
    );
  }
}
