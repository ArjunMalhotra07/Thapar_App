import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/presentation/constants/color.dart';
import 'package:thaparapp/presentation/constants/routes.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          noUser: (value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(value.message),
                backgroundColor: Colors.green,
              ),
            );
            GoRouter.of(context).go(AppRoute.login);
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return GestureDetector(
              onTap: () {
                context.read<AuthBloc>().add(AuthEvent.hitLogout());
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColor.blue1, AppColor.blue2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Logout")),
                ),
              ),
            );
          },
          loading: (value) => const Center(child: CircularProgressIndicator()),
          noUser: (_) => const Text(''),
        );
      },
    );
  }
}
