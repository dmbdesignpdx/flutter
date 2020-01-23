import 'package:flutter/material.dart';

import 'body.dart';


class Home extends StatelessWidget {
  final String title;

  const Home(this.title);

  @override
  Scaffold build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      backgroundColor: Colors.grey[100],
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.black,
        ),
      ),
    ),
    body: HomeBody(key: UniqueKey()),
  );
}
