import 'package:flutter/material.dart';

import 'body.dart';

// Home State
class Home extends StatelessWidget {
  const Home(this.title);

  final String title;

  @override
  Scaffold build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Roboto',
        ),
      ),
    ),
    body: HomeBody(),
  );
}

