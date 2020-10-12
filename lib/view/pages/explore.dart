import 'package:flutter/material.dart';
import 'package:weplay/utils/CustomStrings.dart';

class Explore extends StatelessWidget {
  const Explore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Text(
          CustomStrings.TITLE_EXPLORE,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
