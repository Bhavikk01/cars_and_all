import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/color/app_color.dart';
import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../providers/providers.dart';
import '../../utils/scale_utility.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {

    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        autofocus: true,
                        controller: ref.read(searchProvider)?.searchField,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle: TextStyle(fontWeight: FontWeight.w600),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: CustomTextStyle.txtPoppins12White300.copyWith(
                            color: Color(0xff9095A0),
                            fontSize: scale.getScaledFont(12),
                            fontWeight: FontWeight.w500,
                          ),
                          focusColor: AppColors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColors.backgroundColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColors.backgroundColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColors.backgroundColor),
                          ),
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              AssetConstant.searchBarIcon,
                              height: 2,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              ref.read(searchProvider)?.searchField.clear();
                              ref.read(searchProvider)?.isSearched = false;
                            },
                            icon: Icon(Icons.close,
                              size: scale.getScaledFont(15),
                            ),
                          ),
                          hintText: 'Search "Cars"',
                        ),
                        onFieldSubmitted: (value) {
                          ref.read(searchProvider)?.search();
                        },
                        style: CustomTextStyle.txtPoppins12White300.copyWith(
                          color: AppColors.black,
                          fontSize: scale.getScaledFont(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: scale.getMargin(
                  top: 21,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        return Text(
                          !ref.watch(searchProvider)!.isSearched
                              ? 'Recent'
                              : 'Result for "${ref.watch(searchProvider)?.searchField.text}"',
                          style: CustomTextStyle.txtPoppins12Black500,
                        );
                      }
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        return Text(
                          !ref.watch(searchProvider)!.isSearched
                              ? 'Clear All'
                              : '${ref.watch(searchProvider)?.searchedVehicles.length} found',
                          style: !ref.watch(searchProvider)!.isSearched
                              ? CustomTextStyle.txtPoppins12Black500.copyWith(color: AppColors.primaryLight,)
                              : CustomTextStyle.txtPoppins12Black500,
                        );
                      }
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.backgroundColor,
                height: 1,
              ),
              Container(
                margin: scale.getMargin(
                  top: 10,
                  bottom: 20,
                ),
                child: Consumer(
                  builder: (context, ref, child) {
                    var provider = ref.watch(searchProvider);
                    return (provider!.searchedVehicles.isEmpty && provider.isSearched)? Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: scale.getScaledHeight(50),
                          ),
                          Image.asset(
                            AssetConstant.emptySearch,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: scale.getPadding(
                              top: 35,
                            ),
                            child: Text(
                              'Not Found',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Text(
                            'Sorry, the keyword you entered cannot be found. Please check again or search with another key.',
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.txtPoppins12Black500,
                          )
                        ],
                      ),
                    ) : (provider.searchedVehicles.isEmpty && !provider.isSearched)? ListView.builder(
                      itemCount: provider.recentSearch.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              provider.recentSearch[index],
                              style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                color: Color(0xff202020).withOpacity(0.70),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                size: scale.getScaledFont(12),
                              ),
                            )
                          ],
                        );
                      },
                    ) : (provider.searchedVehicles.isNotEmpty && provider.isSearched) ? ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ) : Container();
                  }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
