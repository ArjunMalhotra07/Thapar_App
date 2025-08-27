import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/app_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isTermsAccepted = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userIdController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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

  void validateAndLogin() {
    // Validate User ID
    if (userIdController.text.trim().isEmpty) {
      showCustomSnackbar('Please enter your User ID', ContentType.warning);
      return;
    }

    if (userIdController.text.trim().length < 12) {
      showCustomSnackbar(
        'User ID must be at least 12 characters long',
        ContentType.warning,
      );
      return;
    }

    // Validate Password
    if (passwordController.text.trim().isEmpty) {
      showCustomSnackbar('Please enter your password', ContentType.warning);
      return;
    }

    // Validate Terms acceptance
    if (!isTermsAccepted) {
      showCustomSnackbar(
        'Please accept the terms of use to continue',
        ContentType.warning,
      );
      return;
    }

    // If all validations pass
    showCustomSnackbar('Login successful!', ContentType.success);
    // TODO: Implement actual login logic here
  }

  void onTermsOfUsePressed() {
    // TODO: Navigate to terms of use page or show dialog
    showCustomSnackbar('Terms of use clicked', ContentType.help);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.logo),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Dark overlay for better readability
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.4),
          ),

          // Main Content
          SafeArea(
            child: Column(
              children: [
                // Header section with logos
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //! Small ti logo
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppImages.logo2,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 20),
                        //! LOC8 TIET heading image
                        Image.asset(
                          AppImages.heading,
                          width: 280,
                          height: 120,
                          fit: BoxFit.contain,
                        ),

                        const SizedBox(height: 16),

                        //! Subtitle
                        Text(
                          'Login to Your Smart Campus Experience',
                          style: TextStyle(
                            fontFamily: AppFonts.gilroy,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                // Login Form Container
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Welcome heading
                          Text(
                            'Welcome Student,',
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Description
                          Text(
                            'Use the User ID and Password provided by the Admin to access your campus.',
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              height: 1.4,
                            ),
                          ),

                          const SizedBox(height: 32),

                          // User ID Field
                          Text(
                            'USER ID',
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: userIdController,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              hintText: 'XXXX-XXXXX-XXXX',
                              hintStyle: TextStyle(
                                fontFamily: AppFonts.gilroy,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[400],
                              ),
                              filled: true,
                              fillColor: Colors.grey[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFFFFF),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFFFFF),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFF640100),
                                  width: 2,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Password Field
                          Text(
                            'PASSWORD',
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: passwordController,
                            obscureText: !isPasswordVisible,
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              hintText: '••••••••',
                              hintStyle: TextStyle(
                                fontFamily: AppFonts.gilroy,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[400],
                              ),
                              filled: true,
                              fillColor: Colors.grey[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFFFFF),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFFFFF),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Color(0xFF640100),
                                  width: 2,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[600],
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Terms of use checkbox
                          Row(
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: isTermsAccepted,
                                  onChanged: (value) {
                                    setState(() {
                                      isTermsAccepted = value ?? false;
                                    });
                                  },
                                  activeColor: const Color(0xFF640100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      'I agree with ',
                                      style: TextStyle(
                                        fontFamily: AppFonts.gilroy,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: onTermsOfUsePressed,
                                      child: Text(
                                        'terms of use',
                                        style: TextStyle(
                                          fontFamily: AppFonts.gilroy,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 32),

                          // Login Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: validateAndLogin,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF640100),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                elevation: 2,
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontFamily: AppFonts.gilroy,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
