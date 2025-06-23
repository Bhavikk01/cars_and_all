import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/color/app_color.dart';
import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../providers/providers.dart';
import '../../utils/scale_utility.dart';

class TrackLoanStatusScreen extends StatelessWidget {
  const TrackLoanStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 15,
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
              Expanded(
                child: Container(
                  margin: scale.getMargin(
                    horizontal: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Track Loan status',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(22),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(5),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: scale.getScaledHeight(18),
                          child: SvgPicture.asset(
                            AssetConstant.successIcon,
                          ),
                        ),
                        trailing: Text(
                          '30-May-2025',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        title: Text(
                          'Application Submitted',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                        subtitle: Text(
                          'Completed',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: scale.getScaledHeight(18),
                          child: SvgPicture.asset(
                            AssetConstant.chatIcon,
                            color: AppColors.white,
                          ),
                        ),
                        trailing: Text(
                          '30-May-2025',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        title: Text(
                          'Document Verification',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                        subtitle: Text(
                          'In progress',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryLight,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: scale.getScaledHeight(18),
                          child: SvgPicture.asset(
                            AssetConstant.successIcon,
                          ),
                        ),
                        trailing: Text(
                          '30-May-2025',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        title: Text(
                          'Approval Waiting',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                        subtitle: Text(
                          'waiting',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: scale.getScaledHeight(18),
                          child: SvgPicture.asset(
                            AssetConstant.moneyIcon,
                            color: AppColors.white,
                          ),
                        ),
                        trailing: Text(
                          '30-May-2025',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        title: Text(
                          'Disbursed',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                          ),
                        ),
                        subtitle: Text(
                          'Pending',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(20),
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
                      Container(
                        margin: scale.getMargin(
                          top: 60,
                          bottom: 10,
                        ),
                        height: scale.getScaledHeight(50),
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sync,
                                color: AppColors.white,
                                size: scale.getScaledFont(24),
                              ),
                              Text(
                                ' Refresh Status',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: scale.getScaledFont(16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
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
                      )
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
