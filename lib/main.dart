import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weplay/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: routes,
    theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.white,
        fontFamily: 'Rubik'),
  ));
}
