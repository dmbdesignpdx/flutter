import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'people/index.dart';
import 'planets/index.dart';
import 'starships/index.dart';
import 'vehicles/index.dart';
import 'species/index.dart';
import 'about/index.dart';
import 'home/index.dart';


// App
class MyApp extends StatelessWidget {
  static const _title = 'Star Wars Universe';

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: AppTheme.main,
      home: Home(_title),
      routes: {
        '/characters' : (context) => People(),
        '/planets' : (context) => Planets(),
        '/species' : (context) => Species(),
        '/starships' : (context) => Starships(),
        '/vehicles' : (context) => Vehicles(),
        '/about' : (context) => About(),
      },
    );
  }
}


// Main
void main() => runApp(MyApp());
