import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme/custom_text_style.dart';
import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AssetConstant.arrowBack,
                  color: AppColors.black,
                  height: scale.getScaledHeight(15),
                ),
                padding: EdgeInsets.zero,
              ),
              Container(
                margin: scale.getMargin(
                  top: 8,
                ),
                child: Text(
                  'Medical Emergency',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  top: 8,
                  bottom: 15,
                ),
                padding: scale.getPadding(
                  all: 10,
                ),
                color: AppColors.secondaryLight,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.black,
                      size: scale.getScaledHeight(15),
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(5),
                    ),
                    Text(
                      'Current Location: 123 Main Street',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        fontSize: scale.getScaledFont(13),
                        fontWeight: FontWeight.w400,
                        color: AppColors.black2020,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      DecoratedContainer(
                        width: double.maxFinite,
                        height: scale.getScaledHeight(54),
                        fillColor: AppColors.primaryLight,
                        borderColor: AppColors.primaryLight,
                        padding: scale.getPadding(
                          all: 10,
                        ),
                        borderRadius: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: scale.getScaledFont(15),
                              child: SvgPicture.asset(
                                AssetConstant.callingIcon,
                              ),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(8),
                            ),
                            Text(
                              'Call Police (100)',
                              style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                fontSize: scale.getScaledFont(13),
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 35,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AssetConstant.buildingIcon,
                              color: AppColors.secondaryLight,
                              height: scale.getScaledHeight(15),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            Text(
                              'Nearby Hospitals',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(5),
                      ),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return DecoratedContainer(
                            padding: scale.getPadding(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            margin: scale.getMargin(
                              vertical: 5,
                              horizontal: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: scale.getScaledFont(20),
                                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                                      child: SvgPicture.asset(
                                        AssetConstant.buildingIcon,
                                        color: AppColors.secondaryLight,
                                        height: scale.getScaledHeight(15),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(10),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(190),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'City general hospital',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(14),
                                        ),
                                      ),
                                      Text(
                                        '0.8 miles away',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(10),
                                          color: Color(0xff6C6C6C),
                                        ),
                                      ),
                                      Text(
                                        '456 Healthcare Ave',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(10),
                                          color: Color(0xff6C6C6C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        radius: scale.getScaledFont(9),
                                        backgroundColor: AppColors.primaryLight,
                                        child: SvgPicture.asset(
                                          AssetConstant.callingIcon,
                                          height: scale.getScaledHeight(8),
                                        ),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      CircleAvatar(
                                        radius: scale.getScaledFont(9),
                                        backgroundColor: AppColors.secondaryLight,
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          size: scale.getScaledHeight(8),
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 35,
                          bottom: 6,
                        ),
                        child: Text(
                          'Report an Incident',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                      ),
                      Text(
                        'Incident type',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      Padding(
                        padding: scale.getPadding(top: 10),
                        child: DropdownButtonFormField2<String>(
                          isDense: true,
                          // value: ref.watch(insuranceFormController)!.registrationTypeSelection,
                          decoration: InputDecoration(
                            contentPadding: scale.getPadding(vertical: 10),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                            ),
                          ),
                          hint: Text(
                            'Select incident type',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.black828282,
                              fontSize: scale.getScaledFont(14),
                            ),
                          ),
                          items: ['Theft', 'Incident'].map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: AppColors.black,
                                fontSize: scale.getScaledFont(10),
                              ),
                            ),
                          )).toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your registration type.';
                            }
                            return null;
                          },
                          onChanged: (value) {

                          },
                          buttonStyleData: ButtonStyleData(
                            padding: scale.getPadding(right: 8),
                          ),
                          iconStyleData: IconStyleData(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black45,
                            ),
                            iconSize: scale.getScaledFont(24),
                          ),
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          menuItemStyleData: MenuItemStyleData(
                            padding: scale.getPadding(horizontal: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(6),
                      ),
                      Text(
                        'Description',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      Padding(
                        padding: scale.getPadding(top: 11),
                        child: TextFormField(
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black828282,
                            fontSize: scale.getScaledFont(14),
                          ),
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AssetConstant.photoIcon,
                                color: AppColors.white,
                                height: scale.getScaledHeight(15),
                              ),
                              Text(
                                '  Add Photo',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 30,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AssetConstant.ideaIcon,
                              color: AppColors.secondaryLight,
                              height: scale.getScaledHeight(15),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(5),
                            ),
                            Text(
                              'Emergency tips',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedContainer(
                        padding: scale.getPadding(
                            horizontal: 8,
                            vertical: 13
                        ),
                        width: double.maxFinite,
                        margin: scale.getMargin(
                            bottom: 10,
                            left: 2,
                            right: 2
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.successIcon,
                                  color: AppColors.greenCheckColor,
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(5),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(270),
                                  child: Text(
                                    'Stay calm and speak clearly when calling emergency services',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(8),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.successIcon,
                                  color: AppColors.greenCheckColor,
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(5),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(270),
                                  child: Text(
                                    "Share your exact location or landmarks nearby",
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shield_outlined,
                                color: AppColors.white,
                                size: scale.getScaledFont(18),
                              ),
                              Text(
                                '  Other Emergency Services',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
