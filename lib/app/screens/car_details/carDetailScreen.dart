import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/emiCalculatorScreen.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/feature_tab.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/icon_tile.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/loanSummaryScreen.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/makeAnOfferScreen.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/overview_tab.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/presentation_tab.dart';
import 'package:cars_and_all/app/screens/car_details/widgets/safety_tab.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../../utils/scale_utility.dart';
import 'nestedNavigation.dart';

class CarDetailScreen extends ConsumerStatefulWidget {
  const CarDetailScreen({super.key});

  @override
  ConsumerState<CarDetailScreen> createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends ConsumerState<CarDetailScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Container(
            padding: scale.getPadding(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: Icon(
                        Icons.arrow_back_outlined,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Icon(
                            Icons.share_outlined,
                          ),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(10),
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: scale.getScaledHeight(10),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: scale.getPadding(horizontal: 35),
                          child: Image.asset(
                            AssetConstant.bannerCar,
                          ),
                        ),
                        Container(
                          padding: scale.getPadding(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          margin: scale.getMargin(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: List.generate(6, (index) {
                              return index == 5 ? Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryLight,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                height: scale.getScaledHeight(40),
                                width: scale.getScaledWidth(40),
                                alignment: Alignment.center,
                                child: Text(
                                  '+10',
                                  style: CustomTextStyle.txtPoppins12White300.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ) : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                height: scale.getScaledHeight(40),
                                child: Image.asset(
                                  AssetConstant.carColorImage,
                                ),
                              );
                            }),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'BMW 8-Series',
                              style: CustomTextStyle.txtPoppins20W700.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(width: 13,),
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColors.primaryLight,
                              size: scale.getScaledFont(14),
                            ),
                            SizedBox(width: 2,),
                            Text(
                              'Delhi',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryLight,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: scale.getMargin(
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: scale.getPadding(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryLight,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  'KYC Verified Seller',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  horizontal: 15,
                                ),
                                height: scale.getScaledHeight(40),
                                child: ElevatedButton(
                                  onPressed: () {  },
                                  style: ElevatedButton.styleFrom(
                                    padding: scale.getPadding(
                                      horizontal: 15,
                                    )
                                  ),
                                  child: Text(
                                    'View Seller details',
                                    style: CustomTextStyle.txtPoppins12White300.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(5),
                        ),
                        Text(
                          'Rs 24.89 Lakh',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        Row(
                          children: [
                            Text(
                              'EMI from Rs. 6789.',
                              style: CustomTextStyle.txtPoppins12White300.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black2020,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                NestedNavigationEmi nestedNavigation = NestedNavigationEmi.emiCalculatorScreen;
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  scrollControlDisabledMaxHeightRatio: 0.85,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.vertical(
                                      top: Radius.circular(50),
                                    )
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(40),
                                          )
                                      ),
                                      child: Navigator(
                                        key: Get.nestedKey(nestedNavigation.navID!),
                                        initialRoute: AppRoutes.emiCalculatorScreen,
                                        onGenerateRoute: (settings) {
                                          switch(settings.name){
                                            case AppRoutes.emiCalculatorScreen:
                                              return GetPageRoute(
                                                page: () => EmiCalculatorScreen(
                                                  nestedNavigation: nestedNavigation,
                                                ),
                                                maintainState: true,
                                              );
                                            case AppRoutes.loanSummaryScreen:
                                              return GetPageRoute(
                                                page: () => LoanSummaryScreen(
                                                  nestedNavigation: nestedNavigation,
                                                ),
                                                maintainState: true,
                                              );
                                            default:
                                              return null;
                                          }
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                margin: scale.getMargin(
                                  left: 10,
                                ),
                                padding: scale.getPadding(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.secondaryLight,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  'Get EMI Calculator',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(8),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0.5,
                              minRating: 0,
                              unratedColor: AppColors.grey,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 1,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: AppColors.secondaryLight,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              '4.8 (86 reviews)',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: AppColors.black2020.withOpacity(0.70),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(8),
                        ),
                        Text(
                          'Description',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: scale.getScaledFont(15),
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(3),
                        ),
                        RichText(
                          maxLines: 6,
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development. Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development. Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: AppColors.black,
                                fontSize: scale.getScaledFont(11),
                              ),
                              children: [
                              TextSpan(
                                text: ' View more...',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  color: AppColors.primaryLight,
                                  fontSize: scale.getScaledFont(11),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Container(
                          margin: scale.getMargin(
                            vertical: 10,
                          ),
                          child: TabBar(
                              labelStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryLight,
                              ),
                              unselectedLabelStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff202020),
                              ),
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
                                  child: Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: ref.watch(carDetailProvider)?.currentTab != 0 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.black2020,
                                        ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.primaryLight,
                                        ),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      Text(
                                        'Overview',
                                        style: ref.watch(carDetailProvider)?.currentTab != 0 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.black2020,
                                        ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.primaryLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetConstant.carStarring,
                                        color: ref.watch(carDetailProvider)?.currentTab != 1
                                            ? AppColors.black2020
                                            : AppColors.primaryLight,
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      Text(
                                        'Presentation',
                                        style: ref.watch(carDetailProvider)?.currentTab != 1 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.black2020,
                                        ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.primaryLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: ref.watch(carDetailProvider)?.currentTab != 2
                                            ? AppColors.black2020
                                            : AppColors.primaryLight,
                                        size: scale.getScaledFont(15),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      Text(
                                        'Features',
                                        style: ref.watch(carDetailProvider)?.currentTab != 2 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.black2020,
                                        ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.primaryLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetConstant.carIcon,
                                        color: ref.watch(carDetailProvider)?.currentTab !=3
                                            ? AppColors.black2020
                                            : AppColors.primaryLight,
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      Text(
                                        'Safety',
                                        style: ref.watch(carDetailProvider)?.currentTab != 3 ? CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.black2020,
                                        ) : CustomTextStyle.txtPoppins10W400.copyWith(
                                          fontSize: scale.getScaledFont(10),
                                          color: AppColors.primaryLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(
                            ref.watch(carDetailProvider)?.currentTab == 0
                                ? 600 : ref.watch(carDetailProvider)?.currentTab != 3 ? 150 : 80,
                          ),
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              OverviewTab(),
                              PresentationTab(),
                              FeatureTab(),
                              SafetyTab()
                            ],
                          ),
                        ),
                        Container(
                          padding: scale.getPadding(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          margin: scale.getMargin(
                            top: 20,
                            bottom: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColors.primaryLight,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                AssetConstant.pdfDownloadIcon,
                                height: scale.getScaledHeight(34),
                                width: scale.getScaledWidth(34),
                              ),
                              Container(
                                width: scale.getScaledWidth(240),
                                margin: scale.getMargin(
                                  left: 11,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BMW 8-series',
                                      style: CustomTextStyle.txtPoppins12White300.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Download BMW 8-series brochure in just one click to view specs and features of all the variants of BMW.',
                                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: scale.getScaledHeight(5),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: AppColors.white,
                                          size: scale.getScaledFont(16),
                                        ),
                                        SizedBox(
                                          width: scale.getScaledWidth(5),
                                        ),
                                        Text(
                                          'Download Brochue',
                                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Reviews & Rating',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: scale.getScaledFont(15),
                          ),
                        ),
                        SizedBox(
                          height: scale.getScaledHeight(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.secondaryLight,
                                  size: scale.getScaledFont(20),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(8),
                                ),
                                Text(
                                  '4.5/5',
                                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(8),
                                ),
                                Text(
                                  '(1233+ reviews)',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'view all',
                              style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                color: AppColors.primaryLight,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: scale.getMargin(
                            vertical: 11,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  size: scale.getScaledFont(16),
                                  color: AppColors.white,
                                ),
                                tileText: 'All',
                                isSelected: true,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.primaryLight,
                                  size: scale.getScaledFont(16),
                                ),
                                tileText: '1',
                                isSelected: false,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.primaryLight,
                                  size: scale.getScaledFont(16),
                                ),
                                tileText: '2',
                                isSelected: false,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.primaryLight,
                                  size: scale.getScaledFont(16),
                                ),
                                tileText: '3',
                                isSelected: false,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.primaryLight,
                                  size: scale.getScaledFont(16),
                                ),
                                tileText: '4',
                                isSelected: false,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              IconTile(
                                scale: scale,
                                icon: Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.primaryLight,
                                  size: scale.getScaledFont(16),
                                ),
                                tileText: '5',
                                isSelected: false,
                                selectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                selectedColor: AppColors.primaryLight,
                                unSelectedColor: Colors.transparent,
                                unSelectedTextStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: scale.getMargin(
                                bottom: 12,
                              ),
                              padding: scale.getPadding(
                                bottom: 12,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.white,
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Jinney Oslin',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'A day ago',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff202020).withOpacity(0.70),
                                      ),
                                    ),
                                    leading: CircleAvatar(
                                      radius: scale.getScaledFont(18),
                                      backgroundImage: AssetImage(
                                        AssetConstant.personImage,
                                      ),
                                    ),
                                    trailing: Wrap(
                                      children: List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: AppColors.secondaryLight,
                                          size: scale.getScaledFont(16),
                                        );
                                      }),
                                    ),
                                    titleAlignment: ListTileTitleAlignment.top,
                                    dense: true,
                                  ),
                                  Container(
                                    padding: scale.getPadding(
                                      left: 12,
                                      right: 18,
                                    ),
                                    child: Text(
                                      'Nostrud excepteur magna id est quis in aliqua consequat. Exercitation enim eiusmod elit sint laborum',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff202020),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: scale.getPadding(horizontal: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Is this review helpful?',
                                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                                            fontSize: scale.getScaledFont(8),
                                          ),
                                        ),
                                        Container(
                                          margin: scale.getMargin(
                                            horizontal: 10,
                                          ),
                                          padding: scale.getPadding(
                                            left: 10,
                                            right: 10,
                                            top: 1,
                                            bottom: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xff9DB2CE),
                                            )
                                          ),
                                          child: Text(
                                            'Yes',
                                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                                              fontSize: scale.getScaledFont(8),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: scale.getPadding(
                                            left: 10,
                                            right: 10,
                                            top: 1,
                                            bottom: 3,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(
                                                color: Color(0xff9DB2CE),
                                              )
                                          ),
                                          child: Text(
                                            'No',
                                            style: CustomTextStyle.txtPoppins10W400.copyWith(
                                              fontSize: scale.getScaledFont(8),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: scale.getPadding(
            horizontal: 20,
            vertical: 20,
          ),
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: scale.getScaledWidth(150),
                padding: scale.getPadding(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryLight,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: scale.getPadding(
                      vertical: 20,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wifi_calling_3_outlined,
                        color: AppColors.primaryLight,
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(10),
                      ),
                      Text(
                        'Chat with seller',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          color: AppColors.primaryLight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: scale.getScaledWidth(150),
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      scrollControlDisabledMaxHeightRatio: 0.85,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(50),
                          )
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40),
                              )
                          ),
                          child: MakeAnOfferScreen(),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: scale.getPadding(
                      vertical: 20,
                    ),
                  ),
                  child: Text(
                    'Make an offer',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      color: AppColors.white,
                    ),
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
