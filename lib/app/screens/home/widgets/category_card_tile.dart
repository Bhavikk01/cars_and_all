import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/home/models/vehicle_brand_model.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'vehicle_list_view_tile.dart';

class CategoryCardTile extends StatelessWidget {
  final ScalingUtility scale;
  final List<VehicleBrandModel> vehicleBrandModel;
  final Function() onTapLatest;
  final Function() onMostPopular;
  const CategoryCardTile({super.key, required this.scale, required this.vehicleBrandModel, required this.onTapLatest, required this.onMostPopular});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: vehicleBrandModel.length,
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        return GestureDetector(
                          onTap: () {
                            onMostPopular();
                          },
                          child: Container(
                            padding: scale.getPadding(
                              left: 15,
                              top: 8,
                              bottom: 8,
                              right: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ref.watch(homeProvider)?.chooseYourCarTab == 0
                                  ? AppColors.secondaryLight
                                  : AppColors.white,
                              borderRadius: ref.watch(homeProvider)?.chooseYourCarTab == 0 ? BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ) : null,
                            ),
                            child: Text(
                              'Most Popular Car',
                              style: ref.watch(homeProvider)?.chooseYourCarTab == 0 ? CustomTextStyle.txtPoppins12Black500.copyWith(
                                color: AppColors.white,
                              ) : CustomTextStyle.txtPoppins12Black500,
                            ),
                          ),
                        );
                      }
                    ),
                    Consumer(
                        builder: (context, ref, child) {
                          return GestureDetector(
                            onTap: () {
                              onTapLatest();
                            },
                            child: Container(
                              padding: scale.getPadding(
                                left: 15,
                                top: 8,
                                bottom: 8,
                                right: 15,
                              ),
                              decoration: BoxDecoration(
                                color: ref.watch(homeProvider)?.chooseYourCarTab == 1
                                    ? AppColors.secondaryLight
                                    : AppColors.white,
                                borderRadius: ref.watch(homeProvider)?.chooseYourCarTab == 1 ? BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  bottomRight: Radius.circular(6),
                                ) : null,
                              ),
                              child: Text(
                                'Latest on sale',
                                style: ref.watch(homeProvider)?.chooseYourCarTab == 1 ? CustomTextStyle.txtPoppins12Black500.copyWith(
                                  color: AppColors.white,
                                ) : CustomTextStyle.txtPoppins12Black500,
                              ),
                            ),
                          );
                        }
                    ),
                  ],
                ),
                Padding(
                  padding: scale.getPadding(
                    right: 20,
                  ),
                  child: Text(
                    'View All',
                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryLight,
                    ),
                  ),
                )
              ],
            ),
            TabBar(
              labelStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                fontWeight: FontWeight.w400,
              ),
              isScrollable: true,
              padding: scale.getPadding(
                left: 10
              ),
              dividerColor: AppColors.dividerColor,
              tabAlignment: TabAlignment.start,
              indicatorColor: AppColors.secondaryLight,
              unselectedLabelColor: Color(0xff202020),
              labelColor: AppColors.secondaryLight,
              tabs: List.generate(
                vehicleBrandModel.length,
                (index) {
                  return Tab(
                    text: vehicleBrandModel[index].brandName,
                  );
                },
              )
            ),
            Container(
              height: scale.getScaledHeight(190),
              margin: scale.getMargin(
                left: 13,
                right: 20,
                top: 12,
                bottom: 24
              ),
              width: double.maxFinite,
              child: TabBarView(
                children: List.generate(
                  vehicleBrandModel.length,
                  (index) {
                    return VehicleListViewTile(
                      vehicleModel: vehicleBrandModel[index].vehicles,
                    );
                  },
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
