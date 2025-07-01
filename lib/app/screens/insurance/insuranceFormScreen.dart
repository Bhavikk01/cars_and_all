import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/insurance/widgets/insuranceVehicleDetails.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../utils/scale_utility.dart';
import 'widgets/insurancePersonalInfo.dart';
import 'widgets/insuranceTypeView.dart';

class InsuranceFormScreen extends ConsumerStatefulWidget {
  const InsuranceFormScreen({super.key});

  @override
  ConsumerState<InsuranceFormScreen> createState() => _InsuranceFormScreenState();
}

class _InsuranceFormScreenState extends ConsumerState<InsuranceFormScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: scale.getMargin(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      if(ref.read(insuranceFormController)?.insuranceStepperIndex == 1){
                        Get.back();
                      } else {
                        ref.read(insuranceFormController)?.updateStepperIndex(
                          val: ref.read(insuranceFormController)!.insuranceStepperIndex-1,
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
                      'Upgrade to Comprehensive Motor Insurance Plan',
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
                      'Fill or Update your information and we’ll get your vehicle covered in no time.',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontSize: scale.getScaledFont(13),
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828282),
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
                                // ref.read(insuranceFormController)!.updateStepperIndex(val: 1);
                              },
                              child: Container(
                                height: scale.getScaledHeight(22),
                                width: scale.getScaledWidth(22),
                                decoration: BoxDecoration(
                                  color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 1
                                      ? AppColors.secondaryLight
                                      : AppColors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 1
                                        ? AppColors.white
                                        : Color(0xffD3DCE6),
                                    width: ref.watch(insuranceFormController)?.insuranceStepperIndex == 1
                                        ? 1
                                        : 2,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '1',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 1
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
                                  color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 2
                                      ? AppColors.secondaryLight
                                      : AppColors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 2
                                        ? AppColors.white
                                        : Color(0xffD3DCE6),
                                    width: ref.watch(insuranceFormController)?.insuranceStepperIndex == 2
                                        ? 1
                                        : 2,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '2',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 2
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
                                  color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 3
                                      ? AppColors.secondaryLight
                                      : AppColors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 3
                                        ? AppColors.white
                                        : Color(0xffD3DCE6),
                                    width: ref.watch(insuranceFormController)?.insuranceStepperIndex == 3
                                        ? 1
                                        : 2,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '3',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 3
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
                ],
              ),
            ),
            Consumer(
                builder: (context, ref, child) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Personal Info',
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 1
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
                          'ID/Vehicle Details',
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 2
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
                          'Insurance type',
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            color: ref.watch(insuranceFormController)?.insuranceStepperIndex == 3
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
                  );
                }
            ),
            SizedBox(
              height: scale.getScaledHeight(10),
            ),
            Consumer(
              builder: (context, ref, child) {
                var insuranceController = ref.watch(insuranceFormController);
                return insuranceController!.insuranceStepperIndex == 1
                    ? InsurancePersonalInfo() : insuranceController.insuranceStepperIndex == 2
                    ? InsuranceVehicleDetails()
                    : insuranceController.insuranceStepperIndex == 3
                    ? InsuranceTypeView()
                    : Container();
              }
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: scale.getMargin(
          bottom: 20,
          top: 10,
          left: 20,
          right: 20,
        ),
        height: scale.getScaledHeight(55),
        child: ElevatedButton(
          onPressed: () {
            ref.read(insuranceFormController)!.updateStepperIndex();
          },
          child: Text(
            'Continue',
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
