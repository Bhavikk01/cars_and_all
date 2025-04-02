import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/screens/auth/OtpDialog.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:cars_and_all/app/widgets/button/custom_elevated_button.dart';
import 'package:cars_and_all/app/widgets/textfield/custom_text_form_feild.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const BackButton(color: Colors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: 24.paddingHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              CircleAvatar(
                radius: 50.h,
                backgroundColor: AppColors.splashBackground,
                backgroundImage: AssetImage(
                  AssetConstant.appLogoSqr,
                ),
              ),
              24.space,

              // Sign In
              Text(
                'Sign In',
                style: context.textTheme.titleLarge?.copyWith(
                    fontSize: 20.fsize,
                    fontWeight: FontWeight.w400,
                    color: context.colorScheme.onSurface),
                textAlign: TextAlign.center,
              ),
              34.space,

              CustomTextFormField(
                fillColor: Colors.transparent,
                labelText: "Mobile no",
                hintText: "Enter Your Mobile Number",
              ),
              30.space,
              CustomElevatedButton(
                text: "Send OTP",
                onPressed: ()
                {
                  showOtpDialog(context);
                },

                buttonTextStyle: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.fsize,
                  letterSpacing: 1.2,
                ),
              ),
              20.space,
              CustomElevatedButton(
                text: "Login via Email",
                buttonTextStyle: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.fsize,
                  letterSpacing: 1.2,
                ),
              ),
              20.space,
              Text(
                'Forget Password?',
                style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary
                ),
                textAlign: TextAlign.center,
              ),
              16.space,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                      value: _agreeToTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreeToTerms = value ?? false;
                        });
                      },
                      activeColor: const Color(0xFFFFC107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      side: BorderSide(color: Colors.grey.shade300),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                        children: [
                          const TextSpan(
                              text: 'By continuing, you agree to our '),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(color: Colors.blue[700]),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Colors.blue[700]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Or sign up with',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Button
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Center(
                      child: Text(
                        'G',
                        style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Facebook Button
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Center(
                      child: Text(
                        'f',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(AppRoutes.signUpScreen.name);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void showOtpDialog(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return OtpVerificationDialog();
      },
    );
  }
}
