import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/color/app_color.dart';
import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AssetConstant.arrowBack,
                  color: AppColors.black,
                  height: scale.getScaledHeight(15),
                ),
                padding: EdgeInsets.zero,
              ),
              Container(
                margin: scale.getMargin(
                  vertical: 5,
                ),
                child: Text(
                  'Select & Upload Documents',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 12,
                ),
                child: Text(
                  'We need a few documents to proceed with your insurance',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Step 3 of 5',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          fontSize: scale.getScaledFont(9),
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '60%',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          fontSize: scale.getScaledFont(9),
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(5),
                  ),
                  LinearProgressIndicator(
                    backgroundColor: Color(0xffD7D7D7),
                    value: 0.60,
                    color: AppColors.secondaryLight,
                    borderRadius: BorderRadius.circular(3),
                    minHeight: 5,
                  )
                ],
              ),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              DecoratedContainer(
                padding: scale.getPadding(
                  top: 10,
                  bottom: 18,
                  left: 10,
                  right: 10,
                ),
                margin: scale.getMargin(
                  horizontal: 2,
                  vertical: 6,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: scale.getScaledFont(17),
                          backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                          child: SvgPicture.asset(
                            AssetConstant.chatIcon,
                            height: scale.getScaledHeight(18),
                          ),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(8),
                        ),
                        Text(
                          'RC Copy',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(14),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: scale.getScaledWidth(45),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(170),
                          height: scale.getScaledHeight(25),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondaryLight,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  size: scale.getScaledHeight(12),
                                  color: AppColors.white,
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(10),
                                ),
                                Text(
                                  'Upload file',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: scale.getScaledWidth(13),
                              color: Color(0xff808080),
                            ),
                            Text(
                              ' Pending',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(10),
                                color: Color(0xff808080),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              DecoratedContainer(
                padding: scale.getPadding(
                  top: 10,
                  bottom: 18,
                  left: 10,
                  right: 10,
                ),
                margin: scale.getMargin(
                  horizontal: 2,
                  vertical: 6,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: scale.getScaledFont(17),
                          backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                          child: SvgPicture.asset(
                            AssetConstant.chatIcon,
                            height: scale.getScaledHeight(18),
                          ),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(8),
                        ),
                        Text(
                          'Aadhaar / PAN',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(14),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: scale.getScaledWidth(45),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(170),
                          height: scale.getScaledHeight(25),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondaryLight,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  size: scale.getScaledHeight(12),
                                  color: AppColors.white,
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(10),
                                ),
                                Text(
                                  'Upload file',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: scale.getScaledWidth(13),
                              color: Color(0xff808080),
                            ),
                            Text(
                              ' Pending',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(10),
                                color: Color(0xff808080),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              DecoratedContainer(
                padding: scale.getPadding(
                  top: 10,
                  bottom: 18,
                  left: 10,
                  right: 10,
                ),
                margin: scale.getMargin(
                  horizontal: 2,
                  vertical: 6,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: scale.getScaledFont(17),
                          backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                          child: SvgPicture.asset(
                            AssetConstant.chatIcon,
                            height: scale.getScaledHeight(18),
                          ),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(8),
                        ),
                        Text(
                          'Salary Slip or Bank document',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(14),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: scale.getScaledWidth(45),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(170),
                          height: scale.getScaledHeight(25),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondaryLight,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  size: scale.getScaledHeight(12),
                                  color: AppColors.white,
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(10),
                                ),
                                Text(
                                  'Upload file',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: scale.getScaledWidth(13),
                              color: Color(0xff808080),
                            ),
                            Text(
                              ' Pending',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(10),
                                color: Color(0xff808080),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: scale.getMargin(
          bottom: 20,
          top: 10,
          left: 20,
          right: 20,
        ),
        height: scale.getScaledHeight(55),
        child: ElevatedButton(
          onPressed: () {
            // ref.read(insuranceFormController)!.updateStepperIndex();
          },
          child: Text(
            'Continue',
            style: CustomTextStyle.txtPoppins16Black500.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              fontSize: scale.getScaledFont(16),
            ),
          ),
        ),
      ),
    );
  }
}
