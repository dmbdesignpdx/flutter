import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'people/index.dart';
import 'planets/index.dart';
import 'starships/index.dart';
import 'home/index.dart';


// App
class MyApp extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Star Wars',
    theme: AppTheme.main,
    home: Home(),
    routes: {
      '/planets' : (context) => Planets(),
      '/people' : (context) => People(),
      '/starships' : (context) => Starships(),
    },
  );
}


// Main
void main() => runApp(MyApp());
