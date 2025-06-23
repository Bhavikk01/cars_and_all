import 'dart:developer';

import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/insurance/enum/insuranceType.dart';
import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';
import '../../../utils/scale_utility.dart';

class InsuranceTypeView extends ConsumerStatefulWidget {
  const InsuranceTypeView({super.key});

  @override
  ConsumerState<InsuranceTypeView> createState() => _InsuranceTypeViewState();
}

class _InsuranceTypeViewState extends ConsumerState<InsuranceTypeView> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: scale.getMargin(
            horizontal: 20,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  ref.read(insuranceFormController)?.updateInsuranceTypeSelection(InsuranceType.COMPREHENSIVE);
                },
                child: Consumer(
                  builder: (context, ref, child) {
                    var insuranceController = ref.watch(insuranceFormController);
                    return Container(
                      margin: scale.getMargin(
                        top: 22,
                        bottom: 10,
                        left: 3,
                        right: 3,
                      ),
                      padding: scale.getPadding(
                        vertical: 20,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(scale.getScaledFont(10)),
                        color: AppColors.white,
                        border: Border.all(
                          color: AppColors.secondaryLight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Radio<InsuranceType>(
                            value: InsuranceType.COMPREHENSIVE,
                            groupValue: insuranceController!.insuranceType,
                            onChanged: (value) {
                              if(insuranceController.insuranceType != InsuranceType.COMPREHENSIVE) {
                                ref.read(insuranceFormController)?.updateInsuranceTypeSelection(value!);
                              }
                            },
                            fillColor: WidgetStateColor.resolveWith((state) {
                              if(state.contains(WidgetState.selected)){
                                return AppColors.secondaryLight;
                              }else {
                                return AppColors.secondaryLight;
                              }
                            }),
                            toggleable: true,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(5),
                          ),
                          Text(
                            'Comprehensive Insurance',
                            style: CustomTextStyle.txtPoppins16Black500.copyWith(
                              fontSize: scale.getScaledFont(14),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  return ref.watch(insuranceFormController)?.insuranceType == InsuranceType.COMPREHENSIVE ? DecoratedContainer(
                    padding: scale.getPadding(
                      horizontal: 23,
                      vertical: 20
                    ),
                    width: double.maxFinite,
                    margin: scale.getMargin(
                      bottom: 10,
                      left: 3,
                      right: 3
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetConstant.successIcon,
                              color: AppColors.greenCheckColor,
                              height: scale.getScaledHeight(25),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(216),
                              child: Text(
                                'Cover Car Damage (Accident)',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: scale.getScaledFont(14),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetConstant.successIcon,
                              color: AppColors.greenCheckColor,
                              height: scale.getScaledHeight(25),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(216),
                              child: Text(
                                'Cover third party liability',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: scale.getScaledFont(14),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetConstant.successIcon,
                              color: AppColors.greenCheckColor,
                              height: scale.getScaledHeight(25),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(216),
                              child: Text(
                                'Covers theft, fire, natural disasters etc.',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: scale.getScaledFont(14),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.cancel,
                              color: AppColors.redCheckColor,
                              size: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                            SizedBox(
                              width: scale.getScaledWidth(216),
                              child: Text(
                                'Does not cover regular wear & tear',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: scale.getScaledFont(14),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ) : Container();
                }
              ),
              GestureDetector(
                onTap: () {
                  ref.read(insuranceFormController)?.updateInsuranceTypeSelection(InsuranceType.THIRDPARTY);
                },
                child: Consumer(
                    builder: (context, ref, child) {
                      var insuranceController = ref.watch(insuranceFormController);
                      return Container(
                        margin: scale.getMargin(
                          bottom: 10,
                          left: 3,
                          right: 3,
                        ),
                        padding: scale.getPadding(
                          vertical: 20,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(scale.getScaledFont(10)),
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.secondaryLight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Radio<InsuranceType>(
                              value: InsuranceType.THIRDPARTY,
                              groupValue: insuranceController!.insuranceType,
                              onChanged: (value) {
                                if(insuranceController.insuranceType != InsuranceType.THIRDPARTY) {
                                  ref.read(insuranceFormController)?.updateInsuranceTypeSelection(value!);
                                }
                              },
                              fillColor: WidgetStateColor.resolveWith((state) {
                                if(state.contains(WidgetState.selected)){
                                  return AppColors.secondaryLight;
                                }else {
                                  return AppColors.secondaryLight;
                                }
                              }),
                              toggleable: true,
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(5),
                            ),
                            Text(
                              'Third-Party Insurance',
                              style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
              Consumer(
                  builder: (context, ref, child) {
                    return ref.watch(insuranceFormController)?.insuranceType == InsuranceType.THIRDPARTY ? DecoratedContainer(
                      padding: scale.getPadding(
                          horizontal: 23,
                          vertical: 20
                      ),
                      width: double.maxFinite,
                      margin: scale.getMargin(
                          bottom: 10,
                          left: 3,
                          right: 3
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AssetConstant.successIcon,
                                color: AppColors.greenCheckColor,
                                height: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(216),
                                child: Text(
                                  'Damage to others',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: scale.getScaledHeight(10),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cancel,
                                color: AppColors.redCheckColor,
                                size: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(216),
                                child: Text(
                                  'Does not covers theft, fire, natural disasters etc.',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: scale.getScaledHeight(10),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cancel,
                                color: AppColors.redCheckColor,
                                size: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(216),
                                child: Text(
                                  'Does not cover Car Damage (Accident)',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ) : Container();
                  }
              ),
              GestureDetector(
                onTap: () {
                  ref.read(insuranceFormController)?.updateInsuranceTypeSelection(InsuranceType.OWNDAMAGE);
                },
                child: Consumer(
                    builder: (context, ref, child) {
                      var insuranceController = ref.watch(insuranceFormController);
                      return Container(
                        margin: scale.getMargin(
                          bottom: 10,
                          left: 3,
                          right: 3,
                        ),
                        padding: scale.getPadding(
                          vertical: 20,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(scale.getScaledFont(10)),
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.secondaryLight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Radio<InsuranceType>(
                              value: InsuranceType.OWNDAMAGE,
                              groupValue: insuranceController!.insuranceType,
                              onChanged: (value) {
                                if(insuranceController.insuranceType != InsuranceType.OWNDAMAGE) {
                                  ref.read(insuranceFormController)?.updateInsuranceTypeSelection(value!);
                                }
                              },
                              fillColor: WidgetStateColor.resolveWith((state) {
                                if(state.contains(WidgetState.selected)){
                                  return AppColors.secondaryLight;
                                }else {
                                  return AppColors.secondaryLight;
                                }
                              }),
                              toggleable: true,
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(5),
                            ),
                            Text(
                              'Own Damage Only',
                              style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
              Consumer(
                  builder: (context, ref, child) {
                    return ref.watch(insuranceFormController)?.insuranceType == InsuranceType.OWNDAMAGE ? DecoratedContainer(
                      padding: scale.getPadding(
                          horizontal: 23,
                          vertical: 20
                      ),
                      width: double.maxFinite,
                      margin: scale.getMargin(
                          bottom: 10,
                          left: 3,
                          right: 3
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AssetConstant.successIcon,
                                color: AppColors.greenCheckColor,
                                height: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(216),
                                child: Text(
                                  'Covers theft, fire, natural disasters etc.',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: scale.getScaledHeight(10),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cancel,
                                color: AppColors.redCheckColor,
                                size: scale.getScaledHeight(25),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(10),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(216),
                                child: Text(
                                  'Cover third party liability',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ) : Container();
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
