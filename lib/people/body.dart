import 'package:flutter/material.dart';

import '../utils/get.dart' show GetPeople;
import '../ui/cardlist.dart';


// PeopleBody
class PeopleBody extends StatelessWidget {
  const PeopleBody({
    @required this.data,
    this.sort = true,
  });

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _people = data
      .map((item) => GetPeople.fromJSON(item))
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
