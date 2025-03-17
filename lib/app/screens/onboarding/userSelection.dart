import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/constants/colors.dart';
import 'package:cars_and_all/app/constants/themes.dart';
import 'package:cars_and_all/app/models/enum/userType.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/scale_utility.dart';

class UserSelection extends ConsumerStatefulWidget {
  const UserSelection({super.key});

  @override
  ConsumerState<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends ConsumerState<UserSelection> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: SafeArea(
        child: Container(
          padding: scale.getPadding(
            horizontal: 18,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: scale.getPadding(
                      left: 10,
                      right: 82,
                    ),
                    child: Image.asset(
                      AssetConstant.arrowBack,
                      height: scale.getScaledHeight(15),
                    ),
                  ),
                  CircleAvatar(
                    radius: scale.getScaledFont(50),
                    backgroundColor: ColorConstant.splashBackground,
                    backgroundImage: AssetImage(
                      AssetConstant.appLogoSqr,
                    ),
                  )
                ],
              ),
              Container(
                margin: scale.getMargin(
                  top: 65,
                  left: 48,
                  right: 48,
                  bottom: 65,
                ),
                child: Image.asset(
                  AssetConstant.userSelection,
                  fit: BoxFit.cover,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Hey! Are you a',
                  style: ThemeConstant.txtPoppins20W700.copyWith(
                    color: ColorConstant.txtColorDrkBlu,
                  ),
                  children: [
                    TextSpan(
                      text: '_____',
                      style: ThemeConstant.txtPoppins20W700.copyWith(
                        color: ColorConstant.txtColorBlu,
                      ),
                    )
                  ]
                ),
              ),
              Container(
                margin: scale.getMargin(
                  top: 22,
                  bottom: 20
                ),
                padding: scale.getPadding(
                  all: 20
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.radioBtnSelection,
                  borderRadius: BorderRadius.circular(scale.getScaledFont(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(AssetConstant.user),
                        ),
                        SizedBox(width: scale.getScaledWidth(15),),
                        Text(
                          'Individual',
                          style: ThemeConstant.txtPoppins16Black500,
                        ),
                      ],
                    ),
                    Radio(
                      value: UserType.INDIVIDUAL,
                      groupValue: [UserType.INDIVIDUAL, UserType.DEALER],
                      activeColor: ColorConstant.txtColorBlu,
                      focusColor: ColorConstant.txtColorBlu,
                      onChanged: (value) {

                      },
                      toggleable: true,
                    ),
                  ],
                ),
              ),
              Container(
                margin: scale.getMargin(
                    bottom: 20
                ),
                padding: scale.getPadding(
                    all: 20
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.circular(scale.getScaledFont(16)),
                  border: Border.all(
                    color: ColorConstant.primaryColor,
                    width: scale.getScaledWidth(1),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(AssetConstant.user),
                        ),
                        SizedBox(width: scale.getScaledWidth(15),),
                        Text(
                          'Dealer',
                          style: ThemeConstant.txtPoppins16Black500,
                        ),
                      ],
                    ),
                    Radio(
                      value: UserType.DEALER,
                      groupValue: [UserType.INDIVIDUAL, UserType.DEALER],
                      activeColor: ColorConstant.txtColorBlu,
                      focusColor: ColorConstant.txtColorBlu,
                      onChanged: (value) {

                      },
                      autofocus: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
