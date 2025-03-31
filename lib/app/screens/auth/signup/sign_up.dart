import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:cars_and_all/app/widgets/button/custom_elevated_button.dart';
import 'package:cars_and_all/app/widgets/textfield/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/assetConstant.dart';
import '../../../constants/colors.dart';
import '../../../utils/scale_utility.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: context.colorScheme.onSurface,onPressed: (){context.pop();},),
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
                radius: scale.getScaledFont(50),
                backgroundColor: ColorConstant.splashBackground,
                backgroundImage: AssetImage(
                  AssetConstant.appLogoSqr,
                ),
              ),

              24.space,

              // Create Account Title
              Text(
                'Create your Account',
                style: context.textTheme.titleLarge?.copyWith(
                    fontSize: 22.fsize,
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface),
                textAlign: TextAlign.center,
              ),

              34.space,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    fillColor: Colors.transparent,
                    labelText: "Enter Name",
                    hintText: "Enter Your Name",
                  ),
                  24.space,
                  CustomTextFormField(
                    fillColor: Colors.transparent,
                    labelText: "Mobile no",
                    hintText: "Enter Your Mobile Number",
                  ),
                  24.space,

                  CustomTextFormField(
                    fillColor: Colors.transparent,
                    labelText: "Email",
                    hintText: "Enter Your Email",
                  ),
                  24.space,

                  CustomTextFormField(
                    fillColor: Colors.transparent,
                    obscureText: _obscurePassword,
                    labelText: "Password",
                    hintText: "••••••••••••",
                  ),
                  24.space,

                  CustomTextFormField(
                    fillColor: Colors.transparent,
                    obscureText: _obscurePassword,
                    labelText: "Confirm Password",
                    hintText: "••••••••••••",
                  ),

                  30.space,

                  CustomElevatedButton(
                    text: "Sign up",
                    buttonTextStyle: context.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.fsize,
                      letterSpacing: 1.2,
                    ),
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
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

                  // Existing member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Existing member? ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle sign in navigation
                        },
                        child: Text(
                          'Sign in',
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

                  /* Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 14),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF4CAF50),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                '91+',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '1234567890',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 14),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ],
                    ),
                  ),*/
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
