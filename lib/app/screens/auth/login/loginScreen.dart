import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/constants/colors.dart';
import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:cars_and_all/app/widgets/button/custom_elevated_button.dart';
import 'package:cars_and_all/app/widgets/textfield/custom_text_form_feild.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
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
      backgroundColor: ColorConstant.white,
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
                backgroundColor: ColorConstant.splashBackground,
                backgroundImage: AssetImage(
                  AssetConstant.appLogoSqr,
                ),
              ),
              10.space,
              Text("Sign In", style: CustomTextStyle.titleMediumPrimary1 ,),
              10.space,

              // CustomTextFormField(
              //   hintText: "Mobile Number",
              //
              // ),


              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: "Mobile no", // Floating label
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always, // Keeps label always above
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
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
                initialCountryCode: 'IN', // Default country (India)
                dropdownIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
                onChanged: (phone) {
                  print(phone.completeNumber); // Full number with country code
                },
              ),
              10.space,
              CustomElevatedButton(onPressed: (){}, text: "Send one OTP", ),
              10.space,
              CustomElevatedButton(onPressed: null, text: "Login with Email",),
              10.space,
              Text("Forget Password?",style: context.textTheme.labelMedium,),

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
                        style: const TextStyle(color: Colors.black),
                        children: [
                          const TextSpan(text: "By continuing, you agree to our "),
                          TextSpan(
                            text: "Terms & Conditions",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
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
