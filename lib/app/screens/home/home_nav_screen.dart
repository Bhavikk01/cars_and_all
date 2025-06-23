import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/routes/app_router.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/screens/home/views/home_screen.dart';
import 'package:cars_and_all/app/screens/home/views/servicesScreen.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../models/enum/nested_navigation.dart';
import '../../utils/scale_utility.dart';
import 'views/category_screen.dart';
import 'views/chat_screen.dart';
import 'views/reels_screen.dart';

class HomeNavScreen extends ConsumerStatefulWidget {
  const HomeNavScreen({super.key});

  @override
  ConsumerState<HomeNavScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeNavScreen> {
  @override
  Widget build(BuildContext context) {

    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    NestedNavigation nestedNavigation = NestedNavigation.homeScreen;
    return Scaffold(
        extendBody: true,
        body: Navigator(
        key: Get.nestedKey(nestedNavigation.navID!),
        initialRoute: AppRoutes.home,
        onGenerateRoute: (settings) {
          switch(settings.name){
            case AppRoutes.home:
              return GetPageRoute(
                page: () => HomeScreen(),
              );
            case AppRoutes.chatScreen:
              return GetPageRoute(
                page: () => ChatScreen(),
              );
            case AppRoutes.reelsScreen:
              return GetPageRoute(
                page: () => ReelsScreen(),
              );
            case AppRoutes.categoryScreen:
              return GetPageRoute(
                page: () => CategoryScreen(),
              );
            case AppRoutes.serviceScreen:
              return GetPageRoute(
                page: () => ServicesScreen(),
              );
            default:
              return null;
          }
        },
      ),
      floatingActionButton: SuperTooltip(
        controller: ref.read(navProvider)!.superTooltipController,
        borderRadius: scale.getScaledFont(6),
        boxShadows: [],
        borderWidth: 0,
        borderColor: Colors.transparent,
        arrowLength: 0,
        arrowTipDistance: scale.getScaledHeight(50),
        arrowBaseWidth: 0,
        popupDirection: TooltipDirection.up,
        content: TapRegion(
          onTapOutside: (PointerDownEvent e) {
            ref.read(navProvider)!.superTooltipController.hideTooltip();
          },
          child: Container(
            color: AppColors.white,
            padding: scale.getPadding(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Parts & Accessories',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryLight,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(12),
                ),
                Text(
                  'Services',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    decorationColor: AppColors.secondaryLight,
                    color: AppColors.secondaryLight,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(12),
                ),
                Text(
                  'Emergency Services',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryLight,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(12),
                ),
                Text(
                  'Find Nearby Mechanicss',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryLight,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(12),
                ),
                Text(
                  'Towing Services',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryLight,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(12),
                ),
                Text(
                  'Service History Check',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    fontSize: scale.getScaledFont(12),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryLight,
                  ),
                ),
              ],
            ),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            ref.read(navProvider)!.superTooltipController.showTooltip();
          },
          child: CircleAvatar(
            radius: scale.getScaledFont(23),
            backgroundColor: AppColors.secondaryLight,
            child: SvgPicture.asset(
              AssetConstant.shop,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: scale.getPadding(
          left: 30,
          right: 30,
          top: 10,
        ),
        color: AppColors.white,
        height: scale.getScaledHeight(50),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    onTap: () {
                      if(ref.read(navProvider)?.index != 0) {
                        ref.read(navProvider)?.updateIndex(0);
                        Get.toNamed(AppRoutes.home, id: nestedNavigation.navID!);
                      }
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          ref.watch(navProvider)?.index == 0
                              ? AssetConstant.homeSelected
                              : AssetConstant.home,
                        ),
                        Text(
                          'Home',
                          style: CustomTextStyle.txtPoppins12White300.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ref.watch(navProvider)?.index == 0
                                ? AppColors.selectionColor
                                : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }
            ),
            Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    onTap: () {
                      if(ref.read(navProvider)?.index != 1) {
                        ref.read(navProvider)?.updateIndex(1);
                        Get.toNamed(AppRoutes.categoryScreen, id: nestedNavigation.navID!);
                      }
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          ref.watch(navProvider)?.index == 1
                              ? AssetConstant.categorySelected
                              : AssetConstant.category,
                        ),
                        Text(
                          'Category',
                          style: CustomTextStyle.txtPoppins12White300.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ref.watch(navProvider)?.index == 1
                                ? AppColors.selectionColor
                                : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }
            ),
            Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    onTap: () {
                      if(ref.read(navProvider)?.index != 2) {
                        ref.read(navProvider)?.updateIndex(2);
                        Get.toNamed(AppRoutes.chatScreen, id: nestedNavigation.navID!);
                      }
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          ref.watch(navProvider)?.index == 2
                              ? AssetConstant.chatSelected
                              : AssetConstant.chat,
                        ),
                        Text(
                          'Chat',
                          style: CustomTextStyle.txtPoppins12White300.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ref.watch(navProvider)?.index == 2
                                ? AppColors.selectionColor
                                : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }
            ),
            Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    onTap: () {
                      if(ref.read(navProvider)?.index != 3) {
                        ref.read(navProvider)?.updateIndex(3);
                        Get.toNamed(AppRoutes.reelsScreen, id: nestedNavigation.navID!);
                      }
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          ref.watch(navProvider)?.index == 3
                              ? AssetConstant.reelsSelected
                              : AssetConstant.reels,
                        ),
                        Text(
                          'Reels',
                          style: CustomTextStyle.txtPoppins12White300.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ref.watch(navProvider)?.index == 3
                                ? AppColors.selectionColor
                                : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }
            ),
          ],
        )
      )
    );
  }
}
