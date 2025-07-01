import 'package:cars_and_all/app/screens/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';
import '../../../providers/providers.dart';
import '../../../utils/scale_utility.dart';
import '../models/category_tile_model.dart';
import '../widgets/category_tile.dart';
import '../widgets/homeBanner.dart';
import '../widgets/homeHeader.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  const CategoryScreen({super.key});

  @override
  ConsumerState<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
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
                          top: 14,
                          bottom: 10,
                          left: 20,
                      ),
                      child: Text(
                        "Top Categories",
                        style: CustomTextStyle.txtPoppins16Black500,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: scale.getScaledHeight(30),
                      margin: scale.getMargin(
                        left: 20,
                        right: 20,
                        bottom: 14,
                      ),
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          CategoryTileModel category = (ref.read(categoryProvider)?.allCategories[index])!;
                          return GestureDetector(
                            onTap: () {
                              ref.read(categoryProvider)?.updateSelectedCategory(category.categoryName);
                            },
                            child: Container(
                              margin: scale.getMargin(
                                right: 5,
                              ),
                              child: CategoryTile(
                                category: category,
                                isSelected: ref.watch(categoryProvider)?.selectedCategory == category.categoryName ? true : false,
                                scale: scale,
                              ),
                            ),
                          );
                        },
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
                        horizontal: 24,
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
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: scale.getPadding(
                            right: 10,
                            left: 10
                        ),
                        onTap: (index) {
                          ref.read(carDetailProvider)?.changeTabIndex(index);
                        },
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                Text(
                                  'All cars',
                                  style: ref.watch(carDetailProvider)?.currentTab != 0 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    color: AppColors.black2020,
                                  ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: scale.getScaledFont(12),
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                                Container(
                                  padding: scale.getPadding(
                                    horizontal: 5,
                                  ),
                                  margin: scale.getMargin(
                                    all: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryLight,
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Text(
                                    '2',
                                    style: CustomTextStyle.txtPoppins12White300.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Text(
                                  'Vintage Cars',
                                  style: ref.watch(carDetailProvider)?.currentTab != 1 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    color: AppColors.black2020,
                                  ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: scale.getScaledFont(12),
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                                Container(
                                  padding: scale.getPadding(
                                    horizontal: 5,
                                  ),
                                  margin: scale.getMargin(
                                    all: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryLight,
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Text(
                                    '2',
                                    style: CustomTextStyle.txtPoppins12White300.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Text(
                                  'Commercial cars',
                                  style: ref.watch(carDetailProvider)?.currentTab != 2 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    color: AppColors.black2020,
                                  ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                                Container(
                                  padding: scale.getPadding(
                                    horizontal: 5,
                                  ),
                                  margin: scale.getMargin(
                                    all: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryLight,
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Text(
                                    '2',
                                    style: CustomTextStyle.txtPoppins12White300.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: scale.getPadding(
                        horizontal: 21,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'View All',
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            fontSize: scale.getScaledFont(10),
                            color: AppColors.primaryLight,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        horizontal: 20,
                      ),
                      width: double.maxFinite,
                      child: Wrap(
                        runSpacing: scale.getScaledHeight(14),
                        alignment: WrapAlignment.spaceBetween,
                        children: List.generate(
                          6,
                          (index) {
                            return CategoryCard(
                              scale: scale,
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        vertical: 44,
                      ),
                      child: Image.asset(
                        AssetConstant.homePageBanner,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: scale.getMargin(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Electric vehicle',
                            style: CustomTextStyle.txtPoppins16Black500,
                          ),
                          Text(
                            'View All',
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
                        horizontal: 20,
                        vertical: 10,
                      ),
                      width: double.maxFinite,
                      child: Wrap(
                        runSpacing: scale.getScaledHeight(14),
                        alignment: WrapAlignment.spaceBetween,
                        children: List.generate(
                          6,
                              (index) {
                            return CategoryCard(
                              scale: scale,
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(80),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
