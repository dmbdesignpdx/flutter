import 'package:flutter/material.dart';


@immutable
class AppTheme {
  static ThemeData main = ThemeData(
    primaryColor: Colors.teal,
    accentColor: Colors.black,
    textTheme: TextTheme(

      // Display
      display1: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 45.0,
        fontWeight: FontWeight.w400,
        color: Colors.teal,
      ),

      // Headline
      headline: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 36.0,
        fontWeight: FontWeight.w700,
        color: Colors.grey[700],
      ),
      
      // Title
      title: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 30.0,
        fontWeight: FontWeight.w700,
        color: Colors.teal[600],
      ),

      // Body
      body1: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    
    ),
  );
}
