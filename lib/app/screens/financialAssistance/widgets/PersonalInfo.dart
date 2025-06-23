import 'package:cars_and_all/app/providers/providers.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../utils/scale_utility.dart';

class PersonalInfo extends ConsumerStatefulWidget {
  const PersonalInfo({super.key});

  @override
  ConsumerState<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends ConsumerState<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: scale.getMargin(
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
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
                    hintText: 'Enter your full name',
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
                    hintText: 'Enter your Mobile Number',
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
                'Email ID',
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
                    hintText: 'Enter Email Address',
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
                'Vehicle Type',
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
                  value: ref.watch(financialAssistProvider)!.vehicleType,
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
                    'Select vehicle type',
                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  items: ref.read(financialAssistProvider)?.allVehicleType.map((item) => DropdownMenuItem<String>(
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
                      return 'Please select your vehicle type.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    ref.read(financialAssistProvider)!.changeVehicleType(value!);
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
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  menuItemStyleData: MenuItemStyleData(
                    padding: scale.getPadding(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Loan Amount',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black828282,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: AppColors.backgroundColor,
                        )
                    ),
                    padding: scale.getPadding(
                      all: 8,
                    ),
                    child: Consumer(
                        builder: (context, ref, child) {
                          return Text(
                            'Rs. ${ref.watch(emiCalculatorProvider)?.loanAmount.toStringAsFixed(0)}',
                            style: CustomTextStyle.txtPoppins12Black500,
                          );
                        }
                    ),
                  )
                ],
              ),
              Container(
                  margin: scale.getMargin(
                    horizontal: 3,
                  ),
                  padding: scale.getPadding(
                    horizontal: 5,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffBDBDBD),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Consumer(
                      builder: (context, ref, child) {
                        return SfSlider(
                          min: 0,
                          max: 799000,
                          value: ref.watch(emiCalculatorProvider)?.loanAmount,
                          stepSize: 1,
                          showTicks: false,
                          showLabels: true,
                          enableTooltip: false,
                          trackShape: SfTrackShape(),
                          showDividers: true,
                          activeColor: AppColors.secondaryLight,
                          inactiveColor: AppColors.grey,
                          thumbIcon: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.secondaryLight,
                                width: 1,
                              ),
                            ),
                          ),
                          onChanged: (val){
                            ref.read(emiCalculatorProvider)?.changeLoanAmount(val);
                          },
                        );
                      }
                  )
              ),
              Container(
                margin: scale.getMargin(
                  top: 15,
                ),
                child: Text(
                  'Loan Tenure',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.black828282,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: scale.getMargin(
                  vertical: 5,
                ),
                padding: scale.getPadding(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffBDBDBD),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Consumer(
                    builder: (context, ref, child) {
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: List.generate(
                          8,
                              (index) {
                            return GestureDetector(
                              onTap: (){
                                ref.read(emiCalculatorProvider)?.changeDuration(index);
                              },
                              child: Container(
                                width: scale.getScaledWidth(65),
                                padding: scale.getPadding(
                                  vertical: 10,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: ref.watch(emiCalculatorProvider)?.chosenDuration == ref.read(emiCalculatorProvider)?.emiDuration[index]
                                      ? AppColors.primaryLight
                                      : AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '${ref.read(emiCalculatorProvider)?.emiDuration[index]} months',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    color: ref.watch(emiCalculatorProvider)?.chosenDuration == ref.read(emiCalculatorProvider)?.emiDuration[index]
                                        ? AppColors.white
                                        : AppColors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(15),
              ),
              Padding(
                padding: scale.getPadding(horizontal: 3),
                child: DropdownButtonFormField2<String>(
                  isDense: true,
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
                    'Add co-applicant details',
                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  items: ref.read(financialAssistProvider)?.allVehicleType.map((item) => DropdownMenuItem<String>(
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
                      return 'Please select your vehicle type.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    ref.read(financialAssistProvider)!.changeVehicleType(value!);
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
                      borderRadius: BorderRadius.circular(8),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                      value: ref.watch(financialAssistProvider)!.agreeTerms,
                      onChanged: (value) {
                        ref.watch(financialAssistProvider)!.updateTermsConditions(value ?? false);
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
                      'I agree to the term and condition',
                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                        fontSize: scale.getScaledFont(9),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
