import 'package:flutter/material.dart';

import '../utils/get.dart';
import '../ui/cardlist.dart';


// PeopleBody
class PeopleBody extends StatelessWidget {
  const PeopleBody({
    @required this.data,
    this.sort,
    Key key,
  }) : super(key: key);

  final List<dynamic> data;
  final bool sort;
  
  @override
  Widget build(BuildContext context) {
    List<Object> _people = data.map((item) =>
      GetPeople.fromJSON(item)
    ).toList(growable: false);    

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...CardList(_people).sort(sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
