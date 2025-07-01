import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/screens/home/widgets/homeBanner.dart';
import 'package:cars_and_all/app/screens/home/widgets/homeHeader.dart';
import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/providers.dart';
import '../../../utils/scale_utility.dart';

class ServicesScreen extends ConsumerStatefulWidget {
  const ServicesScreen({super.key});

  @override
  ConsumerState<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends ConsumerState<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeBanner(),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: scale.getPadding(
                        left: 28,
                        bottom: 6,
                      ),
                      child: Text(
                        'Services',
                        style: CustomTextStyle.txtPoppins16Black500,
                      ),
                    ),
                    Padding(
                      padding: scale.getPadding(
                        horizontal: 20,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        horizontal: 20,
                      ),
                      child: TabBar(
                        isScrollable: true,
                        padding: scale.getPadding(
                            left: 0
                        ),
                        dividerColor: Colors.transparent,
                        tabAlignment: TabAlignment.start,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: AppColors.primaryLight,
                        unselectedLabelColor: Color(0xff202020),
                        labelColor: AppColors.primaryLight,
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: scale.getPadding(
                            right: 10,
                            left: 10
                        ),
                        onTap: (index) {
                          ref.read(carDetailProvider)?.changeTabIndex(index);
                        },
                        tabs: [
                          Tab(
                            child: Text(
                              'Vehicle Insurance',
                              style: ref.watch(carDetailProvider)?.currentTab != 0 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.black2020,
                              ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.primaryLight,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Financial Assistance',
                              style: ref.watch(carDetailProvider)?.currentTab != 1 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.black2020,
                              ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.primaryLight,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'CIBIL Score Scheck',
                              style: ref.watch(carDetailProvider)?.currentTab != 2 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.black2020,
                              ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(12),
                                color: AppColors.primaryLight,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: scale.getPadding(
                        horizontal: 20,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    DecoratedContainer(
                      margin: scale.getMargin(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      padding: scale.getPadding(
                        left: 20,
                        right: 30,
                        top: 15,
                        bottom: 15,
                      ),
                      fillColor: AppColors.secondaryLight,
                      borderRadius: 20,
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upgrade your Motor Insurance Plan',
                            style: CustomTextStyle.txtPoppins20W700.copyWith(
                              fontSize: scale.getScaledFont(22),
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            'Enjoy more coverage on the Comprehensive Motor Insurance',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(13),
                              color: AppColors.white,
                            ),
                          ),
                          Container(
                            width: scale.getScaledWidth(110),
                            height: scale.getScaledHeight(30),
                            margin: scale.getMargin(
                              vertical: 10,
                            ),
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: AppColors.white,
                              ),
                              child: Text(
                                'Upgrade Now',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(10),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.secondaryLight,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: scale.getMargin(
                              top: 10,
                            ),
                            child: Image.asset(
                              AssetConstant.servicesCarImage,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        bottom: 10
                      ),
                      width: scale.getScaledWidth(158),
                      height: scale.getScaledHeight(40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: scale.getPadding(
                              horizontal: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        child: Text(
                          'Buy New Insurance',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: scale.getScaledHeight(40),
                      width: scale.getScaledWidth(158),
                      margin: scale.getMargin(
                          bottom: 20
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: scale.getPadding(
                              horizontal: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        child: Text(
                          'Renew Existing Policy',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            color: AppColors.white,
                          ),
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
    );
  }
}
