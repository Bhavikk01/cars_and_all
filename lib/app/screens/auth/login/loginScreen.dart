import 'dart:developer';

import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:cars_and_all/app/widgets/button/custom_elevated_button.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox.expand(
        child: Container(
          padding: scale.getPadding(
            horizontal: 18,
            vertical: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// App Logo
              CircleAvatar(
                radius: scale.getScaledFont(50),
                backgroundColor: AppColors.splashBackground,
                backgroundImage: AssetImage(
                  AssetConstant.appLogoSqr,
                ),
              ),
              10.space,
              Text(
                "Sign In",
                style: CustomTextStyle.txtPoppins20W700
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              10.space,

              // CustomTextFormField(
              //   hintText: "Mobile Number",
              //
              // ),

              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: "Mobile no",
                  // Floating label
                  labelStyle: CustomTextStyle.txtPoppins14Black700,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                initialCountryCode: 'IN',
                dropdownIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
                onChanged: (phone) {
                  log(phone.completeNumber);
                },
              ),
              10.space,
              CustomElevatedButton(
                onPressed: () {},
                text: "Send one OTP",
                buttonTextStyle: CustomTextStyle.txtPoppins18White500,
              ),
              10.space,
              CustomElevatedButton(
                onPressed: null,
                text: "Login with Email",
                buttonTextStyle: CustomTextStyle.txtPoppins18White500,
              ),
              10.space,
              Text(
                "Forget Password?",
                style: CustomTextStyle.txtPoppins12White300.copyWith(
                  color: AppColors.primaryLight,
                  fontWeight: FontWeight.w600,
                ),
              ),
              15.space,
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: CustomTextStyle.txtPoppins10W400,
                        children: [
                          TextSpan(
                            text: "By continuing, you agree to our ",
                            style: CustomTextStyle.txtPoppins10W400,
                          ),
                          TextSpan(
                            text: "Terms & Conditions",
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.blue636AE8,
                            ),
                          ),
                          const TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.blue636AE8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
