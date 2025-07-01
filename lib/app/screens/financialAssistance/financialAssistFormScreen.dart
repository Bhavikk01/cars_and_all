import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/financialAssistance/widgets/checkLoanEligibility.dart';
import 'package:cars_and_all/app/screens/financialAssistance/widgets/PersonalInfo.dart';
import 'package:cars_and_all/app/screens/financialAssistance/widgets/trackEmiStatus.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class FinancialAssistFormScreen extends ConsumerStatefulWidget {
  const FinancialAssistFormScreen({super.key});

  @override
  ConsumerState<FinancialAssistFormScreen> createState() => _FinancialAssistFormScreenState();
}

class _FinancialAssistFormScreenState extends ConsumerState<FinancialAssistFormScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  if(ref.read(financialAssistProvider)?.stepperIndex == 1){
                    Get.back();
                  } else {
                    ref.read(financialAssistProvider)?.changeStepperIndex(
                      val: ref.read(financialAssistProvider)!.stepperIndex-1,
                    );
                  }
                },
                icon: Image.asset(
                  AssetConstant.arrowBack,
                  color: AppColors.black,
                  height: scale.getScaledHeight(15),
                ),
                padding: EdgeInsets.zero,
              ),
              Container(
                margin: scale.getMargin(
                  vertical: 10,
                ),
                child: Text(
                  'Apply for Vehicle Loan',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Consumer(
                  builder: (context, ref, child) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Color(0xffD3DCE6),
                            thickness: 2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // ref.read(financialAssistProvider)!.changeStepperIndex(1);
                          },
                          child: Container(
                            height: scale.getScaledHeight(22),
                            width: scale.getScaledWidth(22),
                            decoration: BoxDecoration(
                              color: ref.watch(financialAssistProvider)?.stepperIndex == 1
                                  ? AppColors.secondaryLight
                                  : AppColors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 1
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                width: ref.watch(financialAssistProvider)?.stepperIndex == 1
                                    ? 1
                                    : 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '1',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 1
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Divider(
                            color: Color(0xffD3DCE6),
                            thickness: 2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // ref.read(insuranceFormController)!.updateStepperIndex(val: 2);
                          },
                          child: Container(
                            height: scale.getScaledHeight(22),
                            width: scale.getScaledWidth(22),
                            decoration: BoxDecoration(
                              color: ref.watch(financialAssistProvider)?.stepperIndex == 2
                                  ? AppColors.secondaryLight
                                  : AppColors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 2
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                width: ref.watch(financialAssistProvider)?.stepperIndex == 2
                                    ? 1
                                    : 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 2
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Divider(
                            color: Color(0xffD3DCE6),
                            thickness: 2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // ref.read(insuranceFormController)!.updateStepperIndex(val: 3);
                          },
                          child: Container(
                            height: scale.getScaledHeight(22),
                            width: scale.getScaledWidth(22),
                            decoration: BoxDecoration(
                              color: ref.watch(financialAssistProvider)?.stepperIndex == 3
                                  ? AppColors.secondaryLight
                                  : AppColors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 3
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                width: ref.watch(financialAssistProvider)?.stepperIndex == 3
                                    ? 1
                                    : 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 3
                                    ? AppColors.white
                                    : Color(0xffD3DCE6),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Color(0xffD3DCE6),
                            thickness: 2,
                          ),
                        ),

                      ],
                    );
                  }
              ),
              SizedBox(
                height: scale.getScaledHeight(5),
              ),
              Consumer(
                  builder: (context, ref, child) {
                    return Padding(
                      padding: scale.getPadding(left: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Personal Info',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 1
                                    ? Color(0xff828282)
                                    : Color(0xffC7C3C3),
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(10),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Check Loan Eligibility',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 2
                                    ? Color(0xff828282)
                                    : Color(0xffC7C3C3),
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(10),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Track EMI Status',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: ref.watch(financialAssistProvider)?.stepperIndex == 3
                                    ? Color(0xff828282)
                                    : Color(0xffC7C3C3),
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(10),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              Consumer(
                  builder: (context, ref, child) {
                    var financialAssistController = ref.watch(financialAssistProvider);
                    return financialAssistController!.stepperIndex == 1
                        ? PersonalInfo() : financialAssistController.stepperIndex == 2
                        ? CheckLoanEligibility()
                        : financialAssistController.stepperIndex == 3
                        ? TrackEmiStatus()
                        : Container();
                  }
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: scale.getMargin(
          bottom: 20,
          top: 10,
          left: 20,
          right: 20,
        ),
        height: scale.getScaledHeight(40),
        child: ElevatedButton(
          onPressed: () {
            ref.read(financialAssistProvider)!.changeStepperIndex();
          },
          child: Text(
            ref.watch(financialAssistProvider)!.stepperIndex != 3
                ? 'Next step'
                : 'Apply Now',
            style: CustomTextStyle.txtPoppins16Black500.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              fontSize: scale.getScaledFont(16),
            ),
          ),
        ),
      ),
    );
  }
}
