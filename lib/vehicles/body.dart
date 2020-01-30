import 'package:flutter/material.dart';

import '../utils/get.dart' show GetVehicles;
import '../ui/cardlist.dart';


// VehiclesBody
class VehiclesBody extends StatelessWidget {
  const VehiclesBody({
    @required this.data,
    this.sort = true,
  });

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _vehicles = data
      .map((item) => GetVehicles.fromJSON(item))
      .toList(growable: false);

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...sortCards(_vehicles, sort),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
