import 'package:cars_and_all/app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:segmented_progress_bar/segmented_progress_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../shared/color/app_color.dart';
import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';
import '../../widgets/decoratedContainer.dart';
import 'model/chartData.dart';

class CibilScoreScreen extends ConsumerStatefulWidget {
  const CibilScoreScreen({super.key});

  @override
  ConsumerState<CibilScoreScreen> createState() => _CibilScoreScreenState();
}

class _CibilScoreScreenState extends ConsumerState<CibilScoreScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
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
                  top: 8,
                ),
                child: Text(
                  'Your CIBIL Score',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 16,
                ),
                child: Text(
                  'As per the latest credit bureau report',
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
                      Text(
                        'Your credit in excellent shape!',
                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                          fontSize: scale.getScaledFont(16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '774/',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: scale.getScaledFont(14),
                                color: AppColors.primaryLight,
                              ),
                              children: [
                                TextSpan(
                                  text: '850',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: scale.getScaledFont(11),
                                    color: AppColors.black828282,
                                  ),
                                ),
                              ]
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '774/',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: scale.getScaledFont(14),
                                color: AppColors.primaryLight,
                              ),
                              children: [
                                TextSpan(
                                  text: '850',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: scale.getScaledFont(11),
                                    color: AppColors.black828282,
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(8),
                      ),
                      SegmentedProgressBar(
                        borderRadius: scale.getScaledFont(99),
                        segments: [
                          ProgressSegment(
                            value: 1,
                            color: AppColors.secondaryLight.withOpacity(0.3),
                            label: '30',
                            isAbove: false,
                            labelPadding: 8,
                            labelPosition: LabelPosition.end,
                            labelTextStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020,
                            ),
                          ),
                          ProgressSegment(
                            value: 2,
                            color: AppColors.secondaryLight.withOpacity(0.75),
                            label: '30',
                            isAbove: false,
                            labelPadding: 8,
                            labelPosition: LabelPosition.end,
                            labelTextStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020,
                            ),
                          ),
                          ProgressSegment(
                            value: 3,
                            color: AppColors.secondaryLight,
                            label: '30',
                            isAbove: false,
                            labelPadding: 8,
                            labelPosition: LabelPosition.end,
                            labelTextStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020,
                            ),
                          ),
                          ProgressSegment(
                            value: 3,
                            color: AppColors.secondaryLight.withOpacity(0.59),
                            label: '30',
                            isAbove: false,
                            labelPadding: 8,
                            labelPosition: LabelPosition.end,
                            labelTextStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020,
                            ),
                          ),
                          ProgressSegment(
                            value: 2,
                            color: AppColors.secondaryLight.withOpacity(0.30),
                            label: '30',
                            isAbove: false,
                            labelPadding: 8,
                            labelPosition: LabelPosition.end,
                            labelTextStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(12),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2020,
                            ),
                          ),
                        ],
                        height: scale.getScaledHeight(22),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(44),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Last updated: May 15, 2025',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                            fontWeight: FontWeight.w400,
                            color: Color(0xff91919F),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(35),
                      ),
                      SfCartesianChart(
                        plotAreaBorderColor: AppColors.backgroundColor,
                        primaryXAxis: CategoryAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(
                            width: 1,
                            color: AppColors.backgroundColor,
                          ),
                          majorTickLines: MajorTickLines(width: 0),
                          labelStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w900,
                              color: Color(0xff91919F)
                          ),
                        ),
                        primaryYAxis: NumericAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(
                            width: 1,
                            color: AppColors.backgroundColor,
                          ),
                          borderWidth: 0,
                          majorTickLines: MajorTickLines(width: 0),
                          interval: 150,
                          labelStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w900,
                            color: Color(0xff91919F)
                          ),
                        ),
                        series: <CartesianSeries<ChartData, String>>[
                          SplineSeries<ChartData, String>(
                            dataSource: <ChartData>[
                                ChartData(xAxis: 'Nov',yAxis: 350),
                                ChartData(xAxis: 'Dec',yAxis: 450),
                                ChartData(xAxis: 'Jan',yAxis: 550),
                                ChartData(xAxis: 'Feb',yAxis: 650),
                                ChartData(xAxis: 'Mar',yAxis: 750),
                              ],
                            xValueMapper: (ChartData data, _) => data.xAxis,
                            yValueMapper: (ChartData data, _) => data.yAxis,
                            color: Color(0xffFF472E),
                            width: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(26),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AssetConstant.moneyBagIcon,
                            height: scale.getScaledHeight(20),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(10),
                          ),
                          Text(
                            'Score Breakdown',
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: scale.getScaledFont(14),
                            ),
                          ),
                        ],
                      ),
                      DecoratedContainer(
                        width: double.maxFinite,
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        padding: scale.getPadding(
                          bottom: 5,
                          top: 16,
                          left: 32,
                          right: 32,
                        ),
                        fillColor: Colors.transparent,
                        borderRadius: 6,
                        child: Column(
                          children: [
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment History',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'Good',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.primaryLight,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Credit Utilization',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '35%',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Credit Age',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '5 years',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Accounts',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '4',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Hard Inquiries',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 10,
                          horizontal: 2
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: AppColors.primaryLight,
                              )
                            )
                          ),
                          child: Text(
                            'Check Loan offers',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.primaryLight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 5,
                          bottom: 15,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            'Download Reports',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        margin: scale.getMargin(
                          bottom: 40,
                        ),
                        child: SizedBox(
                          width: scale.getScaledWidth(174),
                          child: Text(
                            'This score is for reference. For official reports, visit CIBIL website.',
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(9),
                              fontWeight: FontWeight.w400,
                              color: AppColors.black828282,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
