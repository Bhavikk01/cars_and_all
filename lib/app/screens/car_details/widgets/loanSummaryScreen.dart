import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/car_details/nestedNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../utils/scale_utility.dart';

class LoanSummaryScreen extends StatelessWidget {
  final NestedNavigationEmi nestedNavigation;

  const LoanSummaryScreen({super.key, required this.nestedNavigation});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: scale.getPadding(
            left: 20,
            right: 22,
            top: 22,
            bottom: 49,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back(id: nestedNavigation.navID);
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.white,
                  size: scale.getScaledFont(20),
                ),
              ),
              SizedBox(
                width: scale.getScaledWidth(10),
              ),
              Text(
                'Loan breakup',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                  fontSize: scale.getScaledFont(14),
                ),
              ),
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
                    'Loan Summary',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: scale.getMargin(
                      vertical: 5,
                    ),
                    padding: scale.getPadding(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Component',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Amount',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        MediaQuery.removePadding(
                          context: context,
                          removeBottom: true,
                          child: Consumer(
                            builder: (context, ref, child) {
                              var loanSummaryController = ref.watch(emiCalculatorProvider);
                              return ListView.builder(
                                itemCount: loanSummaryController!.loanComponent.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: scale.getMargin(
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              loanSummaryController.loanComponent[index],
                                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                fontSize: scale.getScaledFont(10),
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              loanSummaryController.amountSummaryComponent[index],
                                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                fontSize: scale.getScaledFont(10),
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: scale.getMargin(
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: scale.getPadding(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(6),
                            ),
                            color: AppColors.backgroundColor,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Duration',
                                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Interest Amt.',
                                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'EMI',
                                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        MediaQuery.removePadding(
                          context: context,
                          removeBottom: true,
                          child: Consumer(
                              builder: (context, ref, child) {
                                var loanSummaryController = ref.watch(emiCalculatorProvider);
                                return ListView.builder(
                                  itemCount: loanSummaryController!.emiDuration.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: scale.getMargin(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                '${loanSummaryController.emiDuration[index]} months',
                                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                  fontSize: scale.getScaledFont(10),
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                loanSummaryController.emiInterestAmount[index],
                                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                  fontSize: scale.getScaledFont(10),
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                loanSummaryController.emiSummary[index],
                                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                  fontSize: scale.getScaledFont(10),
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(5),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ),
        ),
      ],
    );
  }
}
