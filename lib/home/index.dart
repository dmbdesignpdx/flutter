import 'package:flutter/material.dart';

import './body.dart';


// Home
class Home extends StatelessWidget {
  static const String _title = 'Star Wars API';

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[100],
    appBar: AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.grey[100],
      title: Text(
        _title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.black,
        ),
      ),
    ),
      body: HomeBody(),
    );
  }
}
