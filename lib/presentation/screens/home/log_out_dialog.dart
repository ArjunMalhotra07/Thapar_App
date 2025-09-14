import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/app_images.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class LogoutDialog extends StatefulWidget {
  const LogoutDialog({super.key});

  @override
  State<LogoutDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog> {
  void showCustomSnackbar(String message, ContentType contentType) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: contentType == ContentType.success
            ? 'Success!'
            : contentType == ContentType.warning
            ? 'Warning!'
            : 'Error!',
        message: message,
        contentType: contentType,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
      child: Center(
        child: Container(
          width: 350,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image
              Container(
                height: 130,
                width: 130,
                child: Image.asset(
                  AppImages.homeLogout, // Replace with your image path
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 24),

              // "Oh no! You're leaving..." text
              Text(
                'Oh no! You\'re leaving...\nAre you sure?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  height: 1.3,
                  fontFamily: AppFonts.gilroy,
                ),
              ),

              const SizedBox(height: 32),

              // "Nah, Just Kidding" button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.appThemeColor, // Your app color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Nah, Just Kidding',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              // "Yes, Log Me Out" button
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.mapOrNull(
                    noUser: (value) async {
                      showCustomSnackbar(value.message, ContentType.success);
                      GoRouter.of(context).go(AppRoute.login);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (_) => CircularProgressIndicator(),
                    orElse: () {
                      return SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: OutlinedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(AuthEvent.hitLogout());
                            // Navigator.of(context).pop();
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              color: AppColor.appThemeColor,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Yes, Log Me Out',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColor.appThemeColor,
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.transparent, // We handle overlay in the dialog itself
    builder: (BuildContext context) {
      return BlocProvider.value(
        value: locator<AuthBloc>(),
        child: const LogoutDialog(),
      );
    },
  );
}
