import 'package:cars_and_all/app/models/vehicle_model.dart';
import 'package:flutter/material.dart';

import 'vehicle_tile.dart';

class VehicleListViewTile extends StatelessWidget {
  final List<VehicleModel> vehicleModel;
  const VehicleListViewTile({super.key, required, required this.vehicleModel });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: vehicleModel.length,
        itemBuilder: (context, index){
          return VehicleTile(
            vehicleModel: vehicleModel[index],
          );
        },
      ),
    );
  }
}
