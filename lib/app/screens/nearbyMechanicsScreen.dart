import 'package:cars_and_all/app/widgets/nearbyMechanicTile.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/theme/custom_text_style.dart';
import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';

class NearbyMechanicsScreen extends StatelessWidget {
  const NearbyMechanicsScreen({super.key});

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
                  'Roadside Assistance',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle: TextStyle(fontWeight: FontWeight.w600),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: CustomTextStyle.txtPoppins12White300.copyWith(
                            color: Color(0xff9095A0),
                            fontSize: scale.getScaledFont(10),
                            fontWeight: FontWeight.w500,
                          ),
                          focusColor: AppColors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors.secondaryLight),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors.secondaryLight),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors.secondaryLight),
                          ),
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              AssetConstant.searchBarIcon,
                              height: 2,
                              color: AppColors.black,
                            ),
                          ),
                          hintText: 'Search by location or service',
                        ),
                        style: CustomTextStyle.txtPoppins12White300.copyWith(
                          color: AppColors.black,
                          fontSize: scale.getScaledFont(10),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(20),
                    ),
                    SvgPicture.asset(
                      AssetConstant.filterIcon,
                      color: AppColors.primaryLight,
                    )
                  ],
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 10,
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
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NearbyMechanicTile();
                  },
                ),
              ),
              Container(
                margin: scale.getMargin(
                  vertical: 10,
                ),
                width: double.maxFinite,
                height: scale.getScaledHeight(40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Request Mechanic',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
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
