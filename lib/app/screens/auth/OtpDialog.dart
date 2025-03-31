import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/constants/colors.dart';
import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationDialog extends StatefulWidget {
  @override
  _OtpVerificationDialogState createState() => _OtpVerificationDialogState();
}

class _OtpVerificationDialogState extends State<OtpVerificationDialog> {
  TextEditingController _otpController = TextEditingController();
  bool isInvalid = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: 20.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.space,
            CircleAvatar(
              radius: 40.h,
              backgroundColor: ColorConstant.splashBackground,
              backgroundImage: AssetImage(
                AssetConstant.appLogoSqr,
              ),
            ),
            20.space,
            Text(
              "Almost done",
              style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 16.fsize,
                  fontWeight: FontWeight.w400,
                  color: context.colorScheme.onSurface),
            ),
            16.space,
            PinCodeTextField(
              length: 4,
              appContext: context,
              controller: _otpController,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor: context.colorScheme.surface,
                activeColor: context.colorScheme.onSurface,
                selectedColor:context.colorScheme.onSurface,
                inactiveColor: Colors.grey,
                errorBorderColor: isInvalid ? context.colorScheme.onError : context.colorScheme.secondaryContainer,
              ),
              onChanged: (value) {
                setState(() {
                  isInvalid = false;
                  isLoading = false;
                });
              },
            ),
            if (isInvalid)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Please enter a valid code",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            16.space,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () async{
                setState(() {
                  isLoading = true;
                });
                await Future.delayed(Duration(milliseconds: 1000));
                setState(() {
                  isLoading = false;

                  isInvalid = _otpController.text != "7777"; // Simulated validation
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isLoading?SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ):SizedBox.shrink(),
                  10.spaceHorizontal,
                  Text("Verify", style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ),
            20.space,
            Text("32:06", style: TextStyle(color: Colors.grey)),
            12.space,
            GestureDetector(
              onTap: () {},
              child: Text(
                "Not received OTP? Resend Now",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            20.space,
          ],
        ),
      ),
    );
  }
}
