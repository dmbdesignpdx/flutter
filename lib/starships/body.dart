import 'package:flutter/material.dart';

import '../utils/get.dart' show GetStarships;
import '../ui/cardlist.dart';


// StarshipBody
class StarshipBody extends StatelessWidget {
  const StarshipBody({
    @required this.data,
    this.sort = true,
  });

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _people = data
      .map((item) => GetStarships.fromJSON(item))
      .toList(growable: false);

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...sortCards(_people, sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
