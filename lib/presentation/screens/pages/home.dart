import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/utils/constants/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Home screen"),
        centerTitle: true,
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            noUser: (value) async {
              if (context.mounted) {
                GoRouter.of(context).go(AppRoute.login);
              }
            },
          );
        },
        child: SizedBox(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(AuthEvent.hitLogout());
              },
              child: Text("Logout"),
            ),
          ),
        ),
      ),
    );
  }
}
