import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

enum SnackBarType { success, warning, error, info }

class AppSnackBar {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    required SnackBarType type,
    Duration duration = const Duration(seconds: 3),
  }) {
    ContentType contentType;

    switch (type) {
      case SnackBarType.success:
        contentType = ContentType.success;
        break;
      case SnackBarType.warning:
        contentType = ContentType.warning;
        break;
      case SnackBarType.error:
        contentType = ContentType.failure;
        break;
      case SnackBarType.info:
        contentType = ContentType.help;
        break;
    }

    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
      ),
      duration: duration,
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  // Convenience methods for different types
  static void showSuccess({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context: context,
      title: title,
      message: message,
      type: SnackBarType.success,
      duration: duration,
    );
  }

  static void showWarning({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context: context,
      title: title,
      message: message,
      type: SnackBarType.warning,
      duration: duration,
    );
  }

  static void showError({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context: context,
      title: title,
      message: message,
      type: SnackBarType.error,
      duration: duration,
    );
  }

  static void showInfo({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context: context,
      title: title,
      message: message,
      type: SnackBarType.info,
      duration: duration,
    );
  }
}