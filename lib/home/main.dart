import 'package:flutter/material.dart';

import 'body.dart';


// Home
class Home extends StatelessWidget {
  final String title;

  const Home(this.title);

  @override
  Scaffold build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Roboto',
        ),
      ),
    ),
    body: HomeBody(key: UniqueKey()),
  );
}
