import 'package:flutter/material.dart';


@immutable
class AppTheme {
  static ThemeData main = ThemeData(
    primaryColor: Colors.teal,
    accentColor: Colors.black,
    fontFamily: 'Space',
    textTheme: TextTheme(

      // Display
      display1: TextStyle(
        fontFamily: 'Major',
        fontFamilyFallback: ['Space', 'Menlo'],
        fontSize: 45.0,
        fontWeight: FontWeight.w400,
        color: Colors.teal,
      ),

      // Headline
      headline: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.w700,
        color: Colors.grey[700],
      ),
      
      // Title
      title: TextStyle(
        fontFamily: 'Major',
        fontFamilyFallback: ['Space', 'Menlo'],
        fontSize: 30.0,
        fontWeight: FontWeight.w400,
        color: Colors.teal,
      ),

      // Body
      body1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    
    ),
  );
}
