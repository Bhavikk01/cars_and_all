import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class AddVehicleDetailsScreen extends ConsumerStatefulWidget {
  const AddVehicleDetailsScreen({super.key});

  @override
  ConsumerState<AddVehicleDetailsScreen> createState() => _GetVehicleDetailsScreenState();
}

class _GetVehicleDetailsScreenState extends ConsumerState<AddVehicleDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 22,
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
                  'Enter Vehicle Details',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 20,
                ),
                child: Text(
                  'Your information is safe and encrypted.',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AssetConstant.keyProfileIcon,
                            height: scale.getScaledHeight(20),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(5),
                          ),
                          Text(
                            'Owner & Vehicle Information',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Owner Full name',
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
                            hintText: 'Enter full name',
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Mobile Number',
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
                            hintText: 'Enter your mobile number',
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Vehicle Make',
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
                            hintText: 'e.g. Maruti',
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Vehicle Model',
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
                            hintText: 'e.g. Swift VXI',
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Registration number',
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
                            fontSize: scale.getScaledFont(14),
                          ),
                          decoration: InputDecoration(
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: 'Enter registration number',
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Vehicle Class',
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
                            'Enter Vehicle Class',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.black828282,
                              fontSize: scale.getScaledFont(14),
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
                        height: scale.getScaledHeight(12),
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
                            'Select fuel type',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.black828282,
                              fontSize: scale.getScaledFont(14),
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
                        height: scale.getScaledHeight(40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AssetConstant.calenderIcon,
                            height: scale.getScaledHeight(20),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(10),
                          ),
                          Text(
                            'Owner & Vehicle Information',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Registration date',
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
                            hintText: 'dd-mm-yyyy',
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
                            suffix: SvgPicture.asset(
                              AssetConstant.calenderIcon,
                              height: scale.getScaledHeight(20),
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Registration Valid Till',
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
                            hintText: 'dd-mm-yyyy',
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
                            suffix: SvgPicture.asset(
                              AssetConstant.calenderIcon,
                              height: scale.getScaledHeight(20),
                            )
                          ),
                        ),
                      ),

                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Engine Number',
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
                            hintText: 'Enter engine number',
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
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Chassis Number',
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
                            hintText: 'Enter Chassis Number',
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: ref.watch(cibilProvider)!.enterVehicleDetailsAgreeTerms,
                              onChanged: (value) {
                                ref.watch(cibilProvider)!.updateEnterVehicleDetailsAgreeTerms(value ?? false);
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                if (states.contains(WidgetState.selected)) {
                                  return AppColors.secondaryLight;
                                }
                                return Colors.transparent;
                              }),
                              activeColor: const Color(0xFFFFC107),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              side: BorderSide(color: Colors.grey.shade300, width: 2),
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'I confirm that all the details entered above are correct',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 20,
                          bottom: 15,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            'Proceed',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.white,
                            ),
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
