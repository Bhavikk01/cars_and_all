import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';
import '../../widgets/decoratedContainer.dart';

class ApplicationStatusScreen extends StatelessWidget {
  const ApplicationStatusScreen({super.key});

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
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AssetConstant.arrowBack,
                    color: AppColors.black,
                    height: scale.getScaledHeight(15),
                  ),
                  padding: EdgeInsets.zero,
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(20),
              ),
              CircleAvatar(
                radius: scale.getScaledHeight(30),
                backgroundColor: AppColors.secondaryLight,
                child: SvgPicture.asset(
                  AssetConstant.successIcon,
                  height: scale.getScaledHeight(26),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  top: 14,
                  bottom: 20,
                ),
                width: scale.getScaledWidth(200),
                child: Text(
                  'Application Submitted Successfully!',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(15),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AssetConstant.moneyIcon,
                    height: scale.getScaledHeight(20),
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(10),
                  ),
                  Text(
                    'Application Summary',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: scale.getScaledFont(14),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                margin: scale.getMargin(
                  vertical: 10,
                ),
                padding: scale.getPadding(
                  top: 15,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.secondaryLight,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: scale.getPadding(
                        horizontal: 15,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Component',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: scale.getMargin(
                                right: 25,
                              ),
                              alignment: Alignment.topRight,
                              child: Text(
                                'Amount',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(10),
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeBottom: true,
                      removeTop: true,
                      child: Consumer(
                          builder: (context, ref, child) {
                            var financialAssetProvider = ref.watch(financialAssistProvider);
                            return ListView.builder(
                              itemCount: financialAssetProvider!.financialAssistComponent.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: scale.getMargin(
                                    bottom: 10,
                                    right: 35,
                                    left: 19,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            financialAssetProvider.financialAssistComponent[index],
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
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            financialAssetProvider.financialAssistComponentValues[index],
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
                ),
              ),
              DecoratedContainer(
                padding: scale.getPadding(
                    horizontal: 8,
                    vertical: 13
                ),
                width: double.maxFinite,
                margin: scale.getMargin(
                    bottom: 10,
                    left: 2,
                    right: 2
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What Next?',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        fontSize: scale.getScaledFont(12),
                        color: AppColors.primaryLight,
                      ),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(5),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetConstant.successIcon,
                          color: AppColors.greenCheckColor,
                          height: scale.getScaledHeight(15),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(5),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(270),
                          child: Text(
                            'Our partner will review your documents',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020.withOpacity(0.70),
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(8),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetConstant.successIcon,
                          color: AppColors.greenCheckColor,
                          height: scale.getScaledHeight(15),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(5),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(270),
                          child: Text(
                            "You'll receive a call for final verification",
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020.withOpacity(0.70),
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(8),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetConstant.successIcon,
                          color: AppColors.greenCheckColor,
                          height: scale.getScaledHeight(15),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(5),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(270),
                          child: Text(
                            "Once approved, loan details will be shared",
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020.withOpacity(0.70),
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: scale.getMargin(
                  vertical: 10,
                ),
                height: scale.getScaledHeight(50),
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'View Application status',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Need Help?   ',
                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                    fontSize: scale.getScaledFont(10),
                    color: AppColors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Contact Support',
                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                        fontSize: scale.getScaledFont(10),
                        color: AppColors.primaryLight,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
