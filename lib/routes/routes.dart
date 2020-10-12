import 'package:flutter/material.dart';
import 'package:weplay/view/pages/explore.dart';
import 'package:weplay/view/pages/home.dart';
import 'package:weplay/view/pages/splash.dart';

final routes = {
  '/': (BuildContext context) => Splash(),
  '/home': (BuildContext context) => Home(),
  '/explore': (BuildContext context) => Explore(),
};
