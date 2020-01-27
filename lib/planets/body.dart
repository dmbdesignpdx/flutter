import 'package:flutter/material.dart';

import '../utils/get.dart';
import '../ui/cardlist.dart';


// PlanetsBody
class PlanetsBody extends StatelessWidget {
  const PlanetsBody({
    @required this.data,
    this.sort,
    Key key,
  }) : super(key: key);

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _planets = data.map((item) =>
      GetPlanets.fromJSON(item)
    ).toList(growable: false);    

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...CardList(_planets).sort(sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
