import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/utils/constants/color.dart';
import 'package:thaparapp/utils/constants/routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! Title
              Text(
                'NotifySync',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  foreground:
                      Paint()
                        ..shader = LinearGradient(
                          colors: [AppColor.blue1, AppColor.blue2],
                        ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Your Smart Notification Service',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 32),
              //! Login Form
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // Border radius of 12
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(
                        alpha: 0.3,
                      ), // Shadow color with opacity
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 5, // How blurry the shadow is
                      offset: Offset(0, 3), // Shadow offset (x, y)
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Email Field
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),

                    // Password Field
                    TextField(
                      controller: pwController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.mapOrNull(
                          success: (value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Welcome!"),
                                backgroundColor: Colors.green,
                              ),
                            );
                            GoRouter.of(context).pushReplacement(AppRoute.home);
                          },
                          failure: (value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(value.message),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () {
                            return GestureDetector(
                              onTap: () {
                                Map<String, dynamic> data = {
                                  "email": emailController.text,
                                  "password": pwController.text,
                                };
                                context.read<AuthBloc>().add(
                                  AuthEvent.hitLogin(data: data),
                                );
                              },
                              child: Container(
                                width: 300,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 100,
                                  vertical: 20,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [AppColor.blue1, AppColor.blue2],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: state.maybeMap(
                                    loading:
                                        (_) => CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                    orElse:
                                        () => Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                  ),
                                ),
                              ),
                            );
                          },
                          loading: (_) => const CircularProgressIndicator(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
