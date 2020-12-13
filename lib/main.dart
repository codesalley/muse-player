import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'constant.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    home: Scaffold(
      backgroundColor: KbackgroundColor,
      body: HomeScreen(),
    ),
  ));
}
