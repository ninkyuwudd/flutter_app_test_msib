

import 'package:flutter/material.dart';
import 'package:flutter_apps_msib/screen/first_screen.dart';
import 'package:flutter_apps_msib/screen/second_screen.dart';
import 'package:flutter_apps_msib/screen/third_screen.dart';

class Route{
  static const String firstScreen = '/firstScreen';
  static const String secondScreen = '/secondScreen';
  static const String thridScreen = '/thirdScreen';
  static final Map<String,WidgetBuilder> route = {
    firstScreen :(context) => const FirstScreen(),
    secondScreen : (context) => const SecondScreen(),
    thridScreen :(context) => const ThirdScreen()
  };
}