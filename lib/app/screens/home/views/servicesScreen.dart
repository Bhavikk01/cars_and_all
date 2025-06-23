import 'package:cars_and_all/app/screens/home/widgets/homeBanner.dart';
import 'package:cars_and_all/app/screens/home/widgets/homeHeader.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeBanner(),
                    Padding(
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
                        horizontal: 28,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        left: 24,
                      ),
                      child: TabBar(
                        isScrollable: true,
                        padding: scale.getPadding(
                            left: 0
                        ),
                        dividerColor: Colors.transparent,
                        tabAlignment: TabAlignment.start,
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
                        horizontal: 28,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: double.minPositive,
                      child: TabBarView(
                        children: [
                          Container(),
                          Container(),
                          Container(),
                        ],
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
