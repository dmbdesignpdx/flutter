import 'package:flutter/material.dart';


@immutable
class AppTheme {
  static final ThemeData main = ThemeData(
    primaryColor: Colors.teal,
    accentColor: Colors.black,
    textTheme: TextTheme(

      // Display
      display1: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: Colors.teal,
      ),

      // Headline
      headline: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: Colors.grey[700],
      ),
      
      // Title
      title: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 27,
        fontWeight: FontWeight.w700,
        color: Colors.teal[600],
      ),

      // Body
      body1: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),

      // Button
      button: TextStyle(
        fontFamily: 'Space',
        fontFamilyFallback: ['Menlo'],
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    
    ),
  );
}
