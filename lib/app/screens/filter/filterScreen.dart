import 'dart:developer';

import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/screens/filter/enum/driveType.dart';
import 'package:cars_and_all/app/screens/filter/widget/filterTile.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';
import 'enum/transmissionType.dart';

class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({super.key});

  @override
  ConsumerState<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  @override
  Widget build(BuildContext context) {

    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        padding: scale.getPadding(
          left: 24,
          right: 24,
          top: 40,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filters',
                  style: CustomTextStyle.txtPoppins16Black500,
                ),
                Text(
                  'Clear all',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryLight,
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                margin: scale.getMargin(
                  top: 18,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Container(
                          color: AppColors.backgroundColor,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                padding: scale.getPadding(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    return FilterTile(
                                      text: 'Brands',
                                      onTap: () {
                                        ref.read(filterProvider)?.changeFilterTab(0);
                                      },
                                      scale: scale,
                                      isActive: ref.watch(filterProvider)?.currentTab == 0,
                                    );
                                  }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Model',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(1);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 1,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Variant',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(2);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 2,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    return FilterTile(
                                      text: 'Manufacturer',
                                      onTap: () {
                                        ref.read(filterProvider)?.changeFilterTab(3);
                                      },
                                      scale: scale,
                                      isActive: ref.watch(filterProvider)?.currentTab == 3,
                                    );
                                  }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Fuel Type',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(4);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 4,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Km Driven',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(5);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 5,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    return FilterTile(
                                      text: 'Transmission',
                                      onTap: () {
                                        ref.read(filterProvider)?.changeFilterTab(6);
                                      },
                                      scale: scale,
                                      isActive: ref.watch(filterProvider)?.currentTab == 6,
                                    );
                                  }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Search RTO Code',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(7);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 7,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'No of Owner',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(8);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 8,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    return FilterTile(
                                      text: 'Price Range',
                                      onTap: () {
                                        ref.read(filterProvider)?.changeFilterTab(9);
                                      },
                                      scale: scale,
                                      isActive: ref.watch(filterProvider)?.currentTab == 9,
                                    );
                                  }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Drive Type',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(10);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 10,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Restoration Level',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(11);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 11,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Popularity / Collectability',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(12);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 12,
                                      );
                                    }
                                ),
                              ),
                              Container(
                                margin: scale.getMargin(
                                  bottom: 20,
                                ),
                                child: Consumer(
                                    builder: (context, ref, child) {
                                      return FilterTile(
                                        text: 'Certification',
                                        onTap: () {
                                          ref.read(filterProvider)?.changeFilterTab(13);
                                        },
                                        scale: scale,
                                        isActive: ref.watch(filterProvider)?.currentTab == 13,
                                      );
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: scale.getMargin(
                          bottom: 20
                        ),
                        child: Container(
                          margin: scale.getMargin(
                            left: 20,
                            bottom: 20
                          ),
                          child: Consumer(
                            builder: (context, ref, child) {
                              var filterController = ref.watch(filterProvider);
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    children: [
                                      if (filterController!.currentTab <= 7 && filterController.currentTab != 3 && filterController.currentTab != 5 && filterController.currentTab != 6 ) Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.backgroundColor,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColors.secondaryLight,
                                            width: 1,
                                          ),
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle: TextStyle(fontWeight: FontWeight.w600),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            hintStyle: CustomTextStyle.txtPoppins12White300.copyWith(
                                              color: Color(0xff9095A0),
                                              fontSize: scale.getScaledFont(10),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            focusColor: AppColors.white,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(color: AppColors.secondaryLight),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(color: AppColors.secondaryLight),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(color: AppColors.secondaryLight),
                                            ),
                                            contentPadding: EdgeInsets.zero,
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: SvgPicture.asset(
                                                AssetConstant.searchBarIcon,
                                                height: 2,
                                                color: Color(0xff9095A0),
                                              ),
                                            ),
                                            hintText: ref.read(filterProvider)?.getHintText(),
                                          ),
                                          style: CustomTextStyle.txtPoppins12White300.copyWith(
                                            color: AppColors.black,
                                            fontSize: scale.getScaledFont(10),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      (filterController.currentTab == 0 || filterController.currentTab == 1
                                          || filterController.currentTab == 2
                                          || filterController.currentTab == 4
                                          || filterController.currentTab == 8
                                          || filterController.currentTab == 12) ? filterController.currentTab != 1 ? Container(
                                        alignment: Alignment.topRight,
                                        margin: scale.getMargin(
                                          vertical: 13,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: Checkbox(
                                                value: filterController.isSelectAll,
                                                onChanged: (value) {
                                                  filterController.selectAllTrigger();
                                                },
                                                fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                                  if (states.contains(WidgetState.selected)) {
                                                    return AppColors.secondaryLight;
                                                  }
                                                  return Colors.transparent;
                                                }),
                                                checkColor: AppColors.white,
                                                activeColor: AppColors.secondaryLight,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(color: AppColors.secondaryLight, width: 1.5),
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              'Select All',
                                              style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                color: AppColors.primaryLight,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                          : filterController.currentTab == 1 && filterController.selectedBrandName.isEmpty ? SizedBox()
                                          : Container(
                                        alignment: Alignment.topRight,
                                        margin: scale.getMargin(
                                          vertical: 13,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: Checkbox(
                                                value: filterController.isSelectAll,
                                                onChanged: (value) {
                                                  filterController.selectAllTrigger();
                                                },
                                                fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                                  if (states.contains(WidgetState.selected)) {
                                                    return AppColors.secondaryLight;
                                                  }
                                                  return Colors.transparent;
                                                }),
                                                checkColor: AppColors.white,
                                                activeColor: AppColors.secondaryLight,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(color: AppColors.secondaryLight, width: 1.5),
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              'Select All',
                                              style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                color: AppColors.primaryLight,
                                              ),
                                            )
                                          ],
                                        ),
                                      ) : SizedBox()
                                    ],
                                  ),
                                  SizedBox(
                                    height: scale.getScaledHeight(10),
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          (filterController.currentTab == 0 || filterController.currentTab == 1
                                              || filterController.currentTab == 2
                                              || filterController.currentTab == 4
                                              || filterController.currentTab == 8
                                              || filterController.currentTab == 12)
                                              ? filterController.currentTab != 1 ? Column(
                                            children: List.generate(filterController.getCurrentTabOptions().length, (index) {
                                              List options = filterController.getCurrentTabOptions();
                                              return Container(
                                                margin: scale.getMargin(
                                                    all: 3.5
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 24,
                                                      height: 24,
                                                      child: Checkbox(
                                                        value: filterController.checkPresentOrNot(options[index]),
                                                        onChanged: (value) {
                                                          if(filterController.checkPresentOrNot(options[index])){
                                                            filterController.unSelectCheckBoxOption(options[index]);
                                                          }else {
                                                            filterController.selectCheckBoxOption(options[index]);
                                                          }
                                                        },
                                                        fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                                          if (states.contains(WidgetState.selected)) {
                                                            return AppColors.secondaryLight;
                                                          }
                                                          return Colors.transparent;
                                                        }),
                                                        checkColor: AppColors.white,
                                                        activeColor: AppColors.secondaryLight,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                        side: BorderSide(color: AppColors.secondaryLight, width: 1.5),
                                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      '${options[index]}',
                                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                        fontSize: scale.getScaledFont(14),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            }),
                                          ) : (filterController.currentTab == 1 && filterController.selectedBrandName.isEmpty) ? Text(
                                            'Model (Select a Brand First)',
                                            style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: scale.getScaledFont(12),
                                              color: AppColors.black45,
                                            ),
                                          ) : Column(
                                              children: List.generate(filterController.getCurrentTabOptions().length, (index) {
                                                List options = filterController.getCurrentTabOptions();
                                                return Container(
                                                  margin: scale.getMargin(
                                                      all: 3.5
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 24,
                                                        height: 24,
                                                        child: Checkbox(
                                                          value: filterController.checkPresentOrNot(options[index]),
                                                          onChanged: (value) {
                                                            if(filterController.checkPresentOrNot(options[index])){
                                                              filterController.unSelectCheckBoxOption(options[index]);
                                                            }else {
                                                              filterController.selectCheckBoxOption(options[index]);
                                                            }
                                                          },
                                                          fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                                            if (states.contains(WidgetState.selected)) {
                                                              return AppColors.secondaryLight;
                                                            }
                                                            return Colors.transparent;
                                                          }),
                                                          checkColor: AppColors.white,
                                                          activeColor: AppColors.secondaryLight,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(4),
                                                          ),
                                                          side: BorderSide(color: AppColors.secondaryLight, width: 1.5),
                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 8),
                                                      Text(
                                                        '${options[index]}',
                                                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                          fontSize: scale.getScaledFont(14),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              })) : SizedBox(),

                                          filterController.currentTab == 3 || filterController.currentTab == 5 || filterController.currentTab == 9 ? Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    width: scale.getScaledWidth(60),
                                                    alignment: Alignment.center,
                                                    padding: scale.getPadding(
                                                      horizontal: 10,
                                                      vertical: 5,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffF3F4F6),
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Text(
                                                      filterController.currentTab == 3
                                                          ? '${filterController.manufacturer.start.toStringAsFixed(0)}'
                                                          : filterController.currentTab == 5
                                                          ? '${filterController.kmDriven.start.toStringAsFixed(0)}km'
                                                          : filterController.currentTab == 9
                                                          ? '\$${filterController.priceRange.start.toStringAsFixed(0)}'
                                                          : '',
                                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'to',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: scale.getScaledWidth(60),
                                                    alignment: Alignment.center,
                                                    padding: scale.getPadding(
                                                      horizontal: 10,
                                                      vertical: 5,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Color(0xffF3F4F6),
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Text(
                                                      filterController.currentTab == 3
                                                          ? '${filterController.manufacturer.end.toStringAsFixed(0)}'
                                                          : filterController.currentTab == 5
                                                          ? '${filterController.kmDriven.end.toStringAsFixed(0)}km'
                                                          : filterController.currentTab == 9
                                                          ? '\$${filterController.priceRange.end.toStringAsFixed(0)}'
                                                          : '',
                                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(15),
                                              ),
                                              SfRangeSlider(
                                                min: filterController.currentTab == 3
                                                    ? filterController.rangeManufacturer[0]
                                                    : filterController.currentTab == 5
                                                    ? filterController.rangeKmDriven[0]
                                                    : filterController.currentTab == 9
                                                    ? filterController.availablePriceRange[0]
                                                    : 0,
                                                max: filterController.currentTab == 3
                                                    ? filterController.rangeManufacturer[1]
                                                    : filterController.currentTab == 5
                                                    ? filterController.rangeKmDriven[1]
                                                    : filterController.currentTab == 9
                                                    ? filterController.availablePriceRange[1]
                                                    : 0,
                                                values: filterController.currentTab == 3
                                                    ? filterController.manufacturer
                                                    : filterController.currentTab == 5
                                                    ? filterController.kmDriven
                                                    : filterController.priceRange,
                                                interval: filterController.currentTab == 3
                                                    ? 10
                                                    : filterController.currentTab == 5
                                                    ? 100
                                                    : filterController.currentTab == 9
                                                    ? 500
                                                    : 0,
                                                stepSize: 1,
                                                showTicks: false,
                                                showLabels: true,
                                                enableTooltip: false,
                                                showDividers: true,
                                                activeColor: AppColors.secondaryLight,
                                                inactiveColor: Color(0xffF1EFE7),
                                                startThumbIcon: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: AppColors.secondaryLight,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                endThumbIcon: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: AppColors.secondaryLight,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                minorTicksPerInterval: 1,
                                                onChanged: (SfRangeValues values){
                                                  if(filterController.currentTab == 3) {
                                                    filterController.updateManufacturerRange(values);
                                                  }else if(filterController.currentTab == 5){
                                                    filterController.updateKmDrivenRange(values);
                                                  }else if(filterController.currentTab == 9){
                                                    filterController.updatePriceRange(values);
                                                  }
                                                },
                                              ),
                                            ],
                                          ) : SizedBox(),

                                          filterController.currentTab == 13 ? Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Certification',
                                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: scale.getScaledFont(14),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Switch(
                                                      value: filterController.isCertified,
                                                      onChanged: (val){
                                                        filterController.updateCertifiedStatus(val);
                                                      },
                                                      activeColor: AppColors.white,
                                                      inactiveTrackColor: Color(0xff9DB2CE),
                                                      inactiveThumbColor: AppColors.white,
                                                      padding: EdgeInsets.zero,
                                                      trackOutlineColor: WidgetStateColor.transparent,
                                                      activeTrackColor: AppColors.primaryLight,
                                                    ),
                                                    SizedBox(
                                                      width: scale.getScaledWidth(10),
                                                    ),
                                                    Text(
                                                      filterController.isCertified ? 'Required' : 'Not Required',
                                                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                        color: AppColors.black,
                                                        fontSize: scale.getScaledFont(10),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ) : filterController.currentTab == 11 ? Column(
                                            children: [
                                              Container(
                                                margin: scale.getMargin(
                                                  left: 15,
                                                  right: 15,
                                                  bottom: 5,
                                                ),
                                                height: scale.getScaledHeight(35),
                                                width: double.maxFinite,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    filterController.updateRestorationLevel('Original');
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: filterController.restoration == 'Original'
                                                        ? AppColors.primaryLight
                                                        : AppColors.white,
                                                    padding: scale.getPadding(
                                                      horizontal: 15,
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    side: BorderSide(
                                                      color: AppColors.primaryLight,

                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Original',
                                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                      fontSize: scale.getScaledFont(10),
                                                      color: filterController.restoration == 'Original'
                                                          ? AppColors.white
                                                          : AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: scale.getMargin(
                                                  left: 15,
                                                  right: 15,
                                                  bottom: 5,
                                                ),
                                                height: scale.getScaledHeight(35),
                                                width: double.maxFinite,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    filterController.updateRestorationLevel('Partial');
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: filterController.restoration == 'Partial'
                                                        ? AppColors.primaryLight
                                                        : AppColors.white,
                                                    padding: scale.getPadding(
                                                      horizontal: 15,
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    side: BorderSide(
                                                      color: AppColors.primaryLight,

                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Partial',
                                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                      fontSize: scale.getScaledFont(10),
                                                      color: filterController.restoration == 'Partial'
                                                          ? AppColors.white
                                                          : AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: scale.getMargin(
                                                  left: 15,
                                                  right: 15,
                                                  bottom: 5,
                                                ),
                                                height: scale.getScaledHeight(35),
                                                width: double.maxFinite,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    filterController.updateRestorationLevel('Full');
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: filterController.restoration == 'Full'
                                                        ? AppColors.primaryLight
                                                        : AppColors.white,
                                                    padding: scale.getPadding(
                                                      horizontal: 15,
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    side: BorderSide(
                                                      color: AppColors.primaryLight,

                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Full',
                                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                      fontSize: scale.getScaledFont(10),
                                                      color: filterController.restoration == 'Full'
                                                          ? AppColors.white
                                                          : AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ) : SizedBox(),

                                          filterController.currentTab == 6 ? Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<TransmissionType>(
                                                    value: TransmissionType.MANUAL,
                                                    groupValue: filterController.transmissionType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.primaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateTransmissionSelection(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                    hoverColor: AppColors.primaryLight,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    'Manual',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                      color: AppColors.black2020,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(4),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<TransmissionType>(
                                                    value: TransmissionType.AUTOMATIC,
                                                    groupValue: filterController.transmissionType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateTransmissionSelection(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    'Automatic',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                      color: AppColors.black2020,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(4),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<TransmissionType>(
                                                    value: TransmissionType.IMT,
                                                    groupValue: filterController.transmissionType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateTransmissionSelection(value!);
                                                    },
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(120),
                                                    child: Text(
                                                      'iMT (Intelligent Manual Transmission)',
                                                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                        fontWeight: FontWeight.w500,
                                                        color: AppColors.black2020,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ) : filterController.currentTab == 10 ? Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<DriveType>(
                                                    value: DriveType.RWD,
                                                    groupValue: filterController.driveType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateDriveType(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    'RWD',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(4),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<DriveType>(
                                                    value: DriveType.FWD,
                                                    groupValue: filterController.driveType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateDriveType(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    'FWD',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(4),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<DriveType>(
                                                    value: DriveType.AWD,
                                                    groupValue: filterController.driveType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateDriveType(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    'AWD',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: scale.getScaledHeight(4),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Radio<DriveType>(
                                                    value: DriveType.WD4,
                                                    groupValue: filterController.driveType,
                                                    activeColor: AppColors.secondaryLight,
                                                    focusColor: AppColors.secondaryLight,
                                                    onChanged: (value) {
                                                      log('$value');
                                                      filterController.updateDriveType(value!);
                                                    },
                                                    fillColor: WidgetStateColor.resolveWith((state) {
                                                      if(state.contains(WidgetState.selected)){
                                                        return AppColors.secondaryLight;
                                                      }else {
                                                        return AppColors.secondaryLight;
                                                      }
                                                    }),
                                                    toggleable: true,
                                                  ),
                                                  SizedBox(
                                                    width: scale.getScaledWidth(4),
                                                  ),
                                                  Text(
                                                    '4WD',
                                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ) : SizedBox(),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }
                          ),
                        ),
                      ),
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
