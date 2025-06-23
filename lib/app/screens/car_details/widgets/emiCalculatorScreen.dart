
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/screens/car_details/nestedNavigation.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../providers/providers.dart';
import '../../../utils/scale_utility.dart';

class EmiCalculatorScreen extends ConsumerStatefulWidget {
  NestedNavigationEmi? nestedNavigation;
  EmiCalculatorScreen({super.key, this.nestedNavigation});

  @override
  ConsumerState<EmiCalculatorScreen> createState() => _EmiCalculatorScreenState();
}

class _EmiCalculatorScreenState extends ConsumerState<EmiCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: scale.getPadding(
            left: 24,
            right: 22,
            top: 26,
            bottom: 13,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Loan EMI Calculator',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
              Text(
                'Avail upto 100% of the car value in finance at attractive interest rates',
                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                  fontSize: scale.getScaledFont(10),
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: scale.getMargin(
              horizontal: 22,
              vertical: 15,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your monthly EMI',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      vertical: 5,
                    ),
                    padding: scale.getPadding(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs. 19,832',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.loanSummaryScreen, id: widget.nestedNavigation!.navID);
                          },
                          child: Text(
                            'View breakup',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              color: AppColors.primaryLight,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loan Amount',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w500,
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
                  ),
                  Container(
                      margin: scale.getMargin(
                        vertical: 5,
                      ),
                      padding: scale.getPadding(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.secondaryLight,
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
                              inactiveColor: Color(0xffF1EFE7),
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
                      top: 20,
                    ),
                    child: Text(
                      'Duration',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w500,
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
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Consumer(
                        builder: (context, ref, child) {
                          return Wrap(
                            spacing: 12,
                            runSpacing: 12,
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
                  Container(
                    margin: scale.getMargin(
                      top: 20,
                    ),
                    child: Text(
                      'Interest rate',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w500,
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
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: 'Rate of ',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          color: AppColors.black,
                          fontSize: scale.getScaledFont(10),
                        ),
                        children: [
                          TextSpan(
                            text: 'interest @14.5%',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: scale.getScaledFont(10),
                            ),
                          ),
                          TextSpan(
                            text: ' for 3 years',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              color: AppColors.black,
                              fontSize: scale.getScaledFont(10),
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      top: 5,
                      bottom: 22,
                    ),
                    child: Text(
                      '*Interest rate and loan amount offered may be vary subject to customer risk profile',
                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                        fontSize: scale.getScaledFont(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: scale.getScaledHeight(40),
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      child: Text(
                        'Interest in Loan',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(14),
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      top: 5,
                      bottom: 10,
                    ),
                    child: Text(
                      '550+ customers availed the facility',
                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                        fontSize: scale.getScaledFont(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
