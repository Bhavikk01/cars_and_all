import 'package:cars_and_all/app/extensions/build_context_theme_extension.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/screens/home/models/category_tile_model.dart';
import 'package:cars_and_all/app/screens/home/widgets/category_tile.dart';
import 'package:cars_and_all/app/screens/home/widgets/homeBanner.dart';
import 'package:cars_and_all/app/screens/home/widgets/homeHeader.dart';
import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../shared/color/app_color.dart';
import '../../../constants/assetConstant.dart';
import '../../../utils/scale_utility.dart';
import '../widgets/category_card_tile.dart';
import '../widgets/services_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: scale.getPadding(
                      top: 15,
                      bottom: 10,
                      left: 20
                    ),
                    child: Text(
                      "Top Categories",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: scale.getPadding(
                        horizontal: 20
                    ),
                    child: Consumer(
                      builder: (context, ref, child) {
                        return Wrap(
                          alignment: WrapAlignment.start,
                          runSpacing: scale.getScaledHeight(10),
                          spacing: scale.getScaledWidth(6),
                          children: List.generate(
                            ref.watch(homeProvider)?.topCategories.length?? 0,
                            (index) {
                              CategoryTileModel category = (ref.read(homeProvider)?.topCategories[index])!;
                              return CategoryTile(category: category, scale: scale);
                            },
                          ),
                        );
                      }
                    ),
                  ),
                  HomeBanner(),
                  Padding(
                    padding: scale.getPadding(
                        bottom: 10,
                        left: 20
                    ),
                    child: Text(
                      "Choose Your Car",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      return CategoryCardTile(
                        scale: scale,
                        vehicleBrandModel: ref.watch(homeProvider)!.vehicleBrandModel,
                        onMostPopular: () {
                          ref.read(homeProvider)?.changeTap(0);
                        },
                        onTapLatest: () {
                          ref.read(homeProvider)?.changeTap(1);
                        },
                      );
                    }
                  ),
                  Container(
                    padding: scale.getPadding(
                      horizontal: 23,
                      vertical: 28,
                    ),
                    child: Container(
                      padding: scale.getPadding(
                        left: 20,
                        top: 5,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: scale.getScaledWidth(120),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '20%',
                                      style: CustomTextStyle.txtPoppins20W700.copyWith(
                                        color: AppColors.white,
                                        fontSize: scale.getScaledFont(24),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Week deals!',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        color: AppColors.white,
                                        fontSize: scale.getScaledFont(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Get a new car discount, only valid this week.',
                                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  AssetConstant.bannerCar,
                                  fit: BoxFit.contain,
                                  height: scale.getScaledHeight(109),
                                  width: scale.getScaledWidth(189),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: scale.getPadding(right: 20),
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 4,
                              effect: ExpandingDotsEffect(
                                dotHeight: 8,
                                dotWidth: 8,
                                spacing: 4,
                                activeDotColor: AppColors.secondaryLight,
                                dotColor: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: scale.getPadding(
                        bottom: 10,
                        left: 20
                    ),
                    child: Text(
                      "Our Services",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      left: 20,
                      right: 20,
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        crossAxisCount: 2,
                        children: List.generate(
                          8,
                          (index) {
                            return ServicesTile(
                              scale: scale,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: scale.getPadding(
                        bottom: 10,
                        left: 20
                    ),
                    child: Text(
                      "Our Cars",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Consumer(
                      builder: (context, ref, child) {
                        return CategoryCardTile(
                          scale: scale,
                          vehicleBrandModel: ref.watch(homeProvider)!.vehicleBrandModel,
                          onMostPopular: () {
                            ref.read(homeProvider)?.changeTap(0);
                          },
                          onTapLatest: () {
                            ref.read(homeProvider)?.changeTap(1);
                          },
                        );
                      }
                  ),
                  Container(
                    margin: scale.getMargin(
                      vertical: 20,
                    ),
                    child: Image.asset(
                      AssetConstant.homePageBanner,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      top: 10,
                    ),
                    padding: scale.getPadding(
                        bottom: 10,
                        left: 20
                    ),
                    child: Text(
                      "Electric Vehicle",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Consumer(
                      builder: (context, ref, child) {
                        return CategoryCardTile(
                          scale: scale,
                          vehicleBrandModel: ref.watch(homeProvider)!.vehicleBrandModel,
                          onMostPopular: () {
                            ref.read(homeProvider)?.changeTap(0);
                          },
                          onTapLatest: () {
                            ref.read(homeProvider)?.changeTap(1);
                          },
                        );
                      }
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: scale.getPadding(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: SizedBox(
                      width: scale.getScaledWidth(220),
                      child: Text(
                        "Trusted by 1 Million+ Happy Customers!",
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.txtPoppins16Black500,
                      ),
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      horizontal: 80,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(),
                        ),
                        SvgPicture.asset(
                          AssetConstant.carDivider,
                        ),
                        Expanded(
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: scale.getScaledHeight(220),
                    margin: scale.getMargin(
                      left: 10,
                      top: 8,
                      bottom: 24,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: scale.getMargin(
                            left: 10,
                          ),
                          width: scale.getScaledWidth(138),
                          padding: scale.getPadding(
                            top: 8,
                            bottom: 12,
                            left: 6,
                            right: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                              image: AssetImage(AssetConstant.videoThumbnail),
                              fit: BoxFit.cover,
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.splashBackground,
                                radius: scale.getScaledFont(12),
                                backgroundImage: AssetImage(
                                  AssetConstant.appLogoSqr,
                                ),
                              ),
                              Center(
                                child: IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(
                                    Icons.play_arrow_outlined,
                                    color: AppColors.white,
                                    size: scale.getScaledFont(40),
                                  ),
                                ),
                              ),
                              Container(
                                padding: scale.getPadding(
                                  all: 10,
                                ),
                                width: scale.getScaledWidth(125),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff202020).withOpacity(0.73),
                                ),
                                child: Text(
                                  'Thanks to Cars&All for making my car buying experience smooth and memorable. Loving every mile in my new ride!',
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    color: AppColors.secondaryLight,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ),
                  Container(
                    padding: scale.getPadding(
                        bottom: 10,
                        left: 20
                    ),
                    child: Text(
                      "All Brands",
                      style: CustomTextStyle.txtPoppins16Black500,
                    ),
                  ),
                  Container(
                    margin: scale.getMargin(
                      horizontal: 20,
                    ),
                    alignment: Alignment.center,
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(
                        12,
                        (index) {
                          return index != 11 ? Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffD9D9D9),
                                radius: scale.getScaledFont(22),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    AssetConstant.brandLogo,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: scale.getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  'BMW',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ),
                              )
                            ],
                          ) : Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffD9D9D9),
                                radius: scale.getScaledFont(22),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: scale.getScaledFont(20),
                                    color: AppColors.primaryLight,
                                  )
                                ),
                              ),
                              Padding(
                                padding: scale.getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  'More',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
