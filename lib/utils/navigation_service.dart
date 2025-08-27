import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/routing/routing.dart';
import 'package:thaparapp/presentation/constants/routes.dart';

class NavigationService {
  static void navigateToLogin() {
    final context = Routing.rootNavigatorKey.currentContext;
    if (context != null && context.mounted) {
      GoRouter.of(context).go(AppRoute.login);
    }
  }

  static void showSnackBar(String message, {bool isError = false}) {
    final context = Routing.rootNavigatorKey.currentContext;
    if (context != null && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? Colors.red : Colors.green,
        ),
      );
    }
  }
}