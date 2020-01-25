import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'home/main.dart';


// App
class MyApp extends StatelessWidget {
  final String appTitle = 'Planets of Star Wars';

  @override
  MaterialApp build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: appTitle,
    theme: AppTheme.main,
    home: Home(
      title: appTitle,
      key: UniqueKey(),
    ),
  );
}


// Main
void main() => runApp(MyApp());
