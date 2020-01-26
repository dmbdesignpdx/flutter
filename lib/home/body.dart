import 'package:flutter/material.dart';

import '../utils/get.dart';
import '../ui/cardlist.dart';


// HomeBody
class HomeBody extends StatelessWidget {
  const HomeBody({
    @required this.data,
    @required this.sort,
    @required Key key,
  }) : super(key: key);

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _planets = data.map((item) =>
      Planets.fromJSON(item)
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
