import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class FinancialAssistanceLandingScreen extends StatefulWidget {
  const FinancialAssistanceLandingScreen({super.key});

  @override
  State<FinancialAssistanceLandingScreen> createState() => _FinancialAssistanceLandingScreenState();
}

class _FinancialAssistanceLandingScreenState extends State<FinancialAssistanceLandingScreen> {
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
                  vertical: 5,
                ),
                child: Text(
                  'Need Help with Vehicle Finances?',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 12,
                ),
                child: Text(
                  'Explore options to finance your vehicle or manage loan repayments easily.',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
              ),
              DecoratedContainer(
                height: scale.getScaledHeight(93),
                padding: scale.getPadding(
                  all: 10,
                ),
                margin: scale.getMargin(
                  bottom: 8,
                  left: 3,
                  right: 3,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: scale.getScaledFont(17),
                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                      child: SvgPicture.asset(
                        AssetConstant.chatIcon,
                        height: scale.getScaledHeight(18),
                      ),
                    ),
                    Container(
                      width: scale.getScaledWidth(176),
                      margin: scale.getMargin(
                        top: 8,
                        left: 16,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Loan Consultation',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Talk to a finance expert for tailored advice.',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: scale.getPadding(
                            horizontal: 4,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryLight,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Get Help',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(9),
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DecoratedContainer(
                height: scale.getScaledHeight(93),
                padding: scale.getPadding(
                  all: 10,
                ),
                margin: scale.getMargin(
                  bottom: 8,
                  left: 3,
                  right: 3,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: scale.getScaledFont(17),
                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                      child: SvgPicture.asset(
                        AssetConstant.emiRestructureIcon,
                        height: scale.getScaledHeight(20),
                      ),
                    ),
                    Container(
                      width: scale.getScaledWidth(176),
                      margin: scale.getMargin(
                        top: 8,
                        left: 16,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EMI Restructuring',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Adjust your EMI to fit your budget.',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: scale.getPadding(
                            horizontal: 4,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryLight,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Get Help',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(9),
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DecoratedContainer(
                height: scale.getScaledHeight(93),
                padding: scale.getPadding(
                  all: 10,
                ),
                margin: scale.getMargin(
                  bottom: 8,
                  left: 3,
                  right: 3,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: scale.getScaledFont(17),
                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                      child: SvgPicture.asset(
                        AssetConstant.loanRefinance,
                        height: scale.getScaledHeight(30),
                      ),
                    ),
                    Container(
                      width: scale.getScaledWidth(176),
                      margin: scale.getMargin(
                        top: 8,
                        left: 16,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Loan Refinance',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Switch to better interest rates',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: scale.getPadding(
                            horizontal: 4,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryLight,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Get Help',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(9),
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DecoratedContainer(
                height: scale.getScaledHeight(93),
                padding: scale.getPadding(
                  all: 10,
                ),
                margin: scale.getMargin(
                  bottom: 8,
                  left: 3,
                  right: 3,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: scale.getScaledFont(17),
                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                      child: SvgPicture.asset(
                        AssetConstant.loanRefinance,
                        height: scale.getScaledHeight(30),
                      ),
                    ),
                    Container(
                      width: scale.getScaledWidth(176),
                      margin: scale.getMargin(
                        top: 8,
                        left: 16,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Check Eligibility',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Verify your Loan eligibility instantly',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: scale.getPadding(
                            horizontal: 4,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryLight,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Get Help',
                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                              fontSize: scale.getScaledFont(9),
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
        height: scale.getScaledHeight(50),
        child: ElevatedButton(
          onPressed: () {
            // ref.read(insuranceFormController)!.updateStepperIndex();
          },
          child: Text(
            'Start Application',
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
