import 'package:flutter/material.dart';

import 'cardlist.dart';

// HomeBody State
class HomeBody extends StatelessWidget {
  final List<dynamic> data;
  final bool sort;

  const HomeBody({
    @required this.data,
    @required this.sort,
    @required Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<dynamic> _list = data;

    return SafeArea(
      child: ListView(
        children: <Widget>[
          ...CardList.render(_list, sort),
          SizedBox(height: 18,),
        ],
      ),
    );
  }
}
