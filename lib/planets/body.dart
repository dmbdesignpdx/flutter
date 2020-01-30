import 'package:flutter/material.dart';

import '../utils/get.dart' show GetPlanets;
import '../ui/cardlist.dart';


// PlanetsBody
class PlanetsBody extends StatelessWidget {
  const PlanetsBody({
    @required this.data,
    this.sort = true,
  });

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _planets = data
      .map((item) => GetPlanets.fromJSON(item))
      .toList(growable: false);    

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...sortCards(_planets, sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
