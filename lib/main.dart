import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';

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
      backgroundColor: Colors.white30,
      body: HomeScreen(),
    ),
  ));
}
