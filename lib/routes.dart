// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import screen
import 'package:test_intership/view/first_screen.dart';
import 'package:test_intership/view/second_screen.dart';
import 'package:test_intership/view/third_screen.dart';
import 'package:test_intership/view/items/third.dart';

class AppRoutes {
  static const String firstScreen = '/first_screen';
  static const String secondScreen = '/second_screen';
  static const String thirdScreen = '/third_screen';
  static const String third = '/third';
  
  static Map<String, WidgetBuilder> routes = {
    firstScreen: (context) => FirstScreen(),
    secondScreen: (context) => SecondScreen(),
    thirdScreen: (context) => ThirdScreen(),
    third: (context) => Third(),
  };
}