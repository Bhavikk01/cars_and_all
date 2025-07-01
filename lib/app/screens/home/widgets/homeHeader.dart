import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../../shared/theme/theme_helper.dart';
import '../../../constants/assetConstant.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/scale_utility.dart';
import '../../../widgets/decoratedContainer.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff636AE8),
            theme.primaryColor
          ],
          stops: [.16, .64],
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(scale.getScaledFont(6)),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: scale.getPadding(
              top: 40,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.splashBackground,
                      radius: scale.getScaledFont(20),
                      backgroundImage: AssetImage(
                        AssetConstant.appLogoSqr,
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        left: 10,
                        right: 10,
                      ),
                      width: scale.getScaledWidth(100),
                      child: DropdownButtonFormField2<String>(
                        style: CustomTextStyle.txtPoppins16Black500.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: scale.getScaledFont(10),
                        ),
                        decoration: InputDecoration(
                          focusColor: AppColors.white,
                          contentPadding: scale.getPadding(vertical: 3),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                        ),
                        customButton: Padding(
                          padding: scale.getPadding(horizontal: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: scale.getPadding(
                                      right: 4,
                                    ),
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: AppColors.white,
                                      size: scale.getScaledFont(12),
                                    ),
                                  ),
                                  Text(
                                    'Haryana',
                                    style: CustomTextStyle.txtPoppins12White300.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.white,
                                size: scale.getScaledHeight(12),
                              )
                            ],
                          ),
                        ),
                        hint: Text(
                          'Date Listed: Newest',
                          style: CustomTextStyle.txtPoppins16Black500.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        items: ['Delhi', 'Haryana', 'Pune', 'Indore'].map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: CustomTextStyle.txtPoppins16Black500.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: scale.getScaledFont(10),
                            ),
                          ),
                        )).toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select a payment method';
                          }
                          return null;
                        },
                        onChanged: (value) {

                        },
                        buttonStyleData: ButtonStyleData(
                          padding: scale.getPadding(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          width: 90,
                        ),
                        iconStyleData: IconStyleData(
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AppColors.white,
                          ),
                          iconSize: scale.getScaledFont(15),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          offset: Offset(0, -5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          padding: scale.getPadding(horizontal: 8),
                        ),
                      ),
                    ),
                  ],
                ),
                DecoratedContainer(
                  borderRadius: 24,
                  height: scale.getScaledHeight(34),
                  fillColor: AppColors.secondaryLight,
                  padding: scale.getPadding(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetConstant.bellIcon,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(12),
                        ),
                        SvgPicture.asset(
                          AssetConstant.personIcon,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(12),
                        ),
                        SvgPicture.asset(
                          AssetConstant.shop,
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            thickness: 1,
          ),
          Container(
            padding: scale.getPadding(
                vertical: 10,
                horizontal: 25
            ),
            color: Colors.transparent,
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                            isDense: true,
                            labelStyle: TextStyle(fontWeight: FontWeight.w600),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintStyle: CustomTextStyle.txtPoppins12White300.copyWith(
                              color: Color(0xff9095A0),
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                            ),
                            focusColor: AppColors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: AppColors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: AppColors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: AppColors.white),
                            ),
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                AssetConstant.searchBarIcon,
                                height: 2,
                              ),
                            ),
                            hintText: 'Search "Cars"'
                        ),
                        style: CustomTextStyle.txtPoppins12White300.copyWith(
                          color: AppColors.black,
                          fontSize: scale.getScaledFont(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: scale.getScaledWidth(30),
                ),
                SvgPicture.asset(
                  AssetConstant.favorite,
                  height: scale.getScaledHeight(24),
                ),
                SizedBox(
                  width: scale.getScaledWidth(30),
                ),
                SvgPicture.asset(
                  AssetConstant.filterIcon,
                  color: AppColors.white,
                  height: scale.getScaledHeight(24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
