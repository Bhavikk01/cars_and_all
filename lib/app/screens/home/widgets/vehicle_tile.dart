import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/models/vehicle_model.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/scale_utility.dart';

class VehicleTile extends StatelessWidget {
  final VehicleModel vehicleModel;
  
  const VehicleTile({super.key, required this.vehicleModel});

  @override
  Widget build(BuildContext context) {

    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    
    return Container(
      width: scale.getScaledWidth(140),
      margin: scale.getMargin(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black45
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: scale.getScaledHeight(120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(
                image: AssetImage(
                  AssetConstant.car,
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: scale.getPadding(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vehicleModel.vehicleName,
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Rs13.99 - 24.89 Lakh',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
