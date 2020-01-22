import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'home/main.dart';


// App
class MyApp extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: AppTheme.main,
      home: Home('Planets'),
    );
  }
}


// Main
void main() => runApp(MyApp());
