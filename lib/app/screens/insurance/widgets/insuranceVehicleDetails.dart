import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/scale_utility.dart';

class InsuranceVehicleDetails extends ConsumerStatefulWidget {
  const InsuranceVehicleDetails({super.key});

  @override
  ConsumerState<InsuranceVehicleDetails> createState() => _InsuranceVehicleDetailsState();
}

class _InsuranceVehicleDetailsState extends ConsumerState<InsuranceVehicleDetails> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: scale.getScaledHeight(15),
            ),
            Container(
              margin: scale.getMargin(
                horizontal: 24,
              ),
              child: Divider(
                color: Color(0xffE0E0E0),
                height: 0.5,
              ),
            ),
            SizedBox(
              height: scale.getScaledHeight(20),
            ),
            Container(
              margin: scale.getMargin(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CircleAvatar(
                        radius: scale.getScaledFont(17),
                        backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                        child: SvgPicture.asset(
                          AssetConstant.documentIcon,
                          height: scale.getScaledHeight(18),
                        ),
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(10),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Driver’s License/Dami-Benson',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black828282,
                                  ),
                                ),
                                Text(
                                  '87%',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black828282,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(5),
                            ),
                            LinearProgressIndicator(
                              backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                              value: 0.87,
                              color: AppColors.secondaryLight,
                              borderRadius: BorderRadius.circular(12),
                              minHeight: 5,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryLight,
                        size: scale.getScaledFont(15),
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(5),
                      ),
                      Text(
                        'Upload more',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          fontSize: scale.getScaledFont(10),
                          color: AppColors.black828282,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: scale.getMargin(
                top: 30,
                bottom: 12,
                left: 24,
                right: 24
              ),
              child: Text(
                'Vehicle Information',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontSize: scale.getScaledFont(14),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: scale.getScaledHeight(120),
              padding: scale.getPadding(left: 15),
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return index == 2 ? Container(
                    width: scale.getScaledWidth(122),
                    margin: scale.getMargin(
                        horizontal: 8
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryLight.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.secondaryLight,
                          size: scale.getScaledFont(36),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(5),
                        ),
                        Text(
                          'Add New Car',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            color: AppColors.secondaryLight,
                            fontSize: scale.getScaledFont(12),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ) : Container(
                    width: scale.getScaledWidth(122),
                    padding: scale.getPadding(
                      all: 8,
                    ),
                    margin: scale.getMargin(
                        horizontal: 8
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColors.secondaryLight,
                      )
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          AssetConstant.carTileImage,
                          height: scale.getScaledHeight(60),
                        ),
                        Text(
                          'Toyota Yaris',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '2005',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                            color: Color(0xffBDBDBD),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: scale.getMargin(
                horizontal: 24,
                vertical: 23,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Car Name',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Padding(
                    padding: scale.getPadding(horizontal: 3),
                    child: TextFormField(
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black828282,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Car name',
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
                  SizedBox(
                    height: scale.getScaledHeight(15),
                  ),
                  Text(
                    'Number Plate',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Padding(
                    padding: scale.getPadding(horizontal: 3),
                    child: TextFormField(
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black828282,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Number plate',
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
                  SizedBox(
                    height: scale.getScaledHeight(15),
                  ),
                  Text(
                    'Date of  Purchase',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Padding(
                    padding: scale.getPadding(horizontal: 3),
                    child: TextFormField(
                      onTapAlwaysCalled: true,
                      onTap: () {
                        ///TODO: Have to add functionality for selecting date of birth.
                      },
                      readOnly: true,
                      initialValue: '25 - January - 1890',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black828282,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Car name',
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
                  SizedBox(
                    height: scale.getScaledHeight(15),
                  ),
                  Text(
                    'Fuel Type',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Padding(
                    padding: scale.getPadding(horizontal: 3),
                    child: DropdownButtonFormField2<String>(
                      isDense: true,
                      value: ref.watch(insuranceFormController)!.fuelTypeSelection,
                      decoration: InputDecoration(
                        contentPadding: scale.getPadding(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                      ),
                      hint: Text(
                        'Select Your fuel type',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      items: ref.read(insuranceFormController)?.allFuelType.map((item) => DropdownMenuItem<String>(
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
                          return 'Please select your fuel type.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        ref.read(insuranceFormController)!.changeFuelTypeSelection(value!);
                      },
                      buttonStyleData: ButtonStyleData(
                        padding: scale.getPadding(right: 8),
                      ),
                      iconStyleData: IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        iconSize: scale.getScaledFont(24),
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        padding: scale.getPadding(horizontal: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(15),
                  ),
                  Text(
                    'Registration Year',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  Padding(
                    padding: scale.getPadding(horizontal: 3),
                    child: DropdownButtonFormField2<String>(
                      isDense: true,
                      value: ref.watch(insuranceFormController)!.registrationTypeSelection,
                      decoration: InputDecoration(
                        contentPadding: scale.getPadding(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color(0xffBDBDBD),
                            width: 1,
                          ),
                        ),
                      ),
                      hint: Text(
                        'Select Your registration type',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      items: ref.read(insuranceFormController)?.allRegistrationType.map((item) => DropdownMenuItem<String>(
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
                        ref.read(insuranceFormController)!.changeRegistrationTypeSelection(value!);
                      },
                      buttonStyleData: ButtonStyleData(
                        padding: scale.getPadding(right: 8),
                      ),
                      iconStyleData: IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        iconSize: scale.getScaledFont(24),
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        padding: scale.getPadding(horizontal: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(15),
                  ),
                  Text(
                    'Previous Insurance',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                      color: AppColors.black828282,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(10),
                  ),
                  Switch(
                    value: true,
                    onChanged: (val){
                      // filterController.updateCertifiedStatus(val);
                    },
                    activeColor: AppColors.white,
                    inactiveTrackColor: Color(0xff9DB2CE),
                    inactiveThumbColor: AppColors.white,
                    padding: EdgeInsets.zero,
                    trackOutlineColor: WidgetStateColor.transparent,
                    activeTrackColor: AppColors.primaryLight,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
