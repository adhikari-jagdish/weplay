import 'package:flutter/material.dart';
import 'package:weplay/utils/CustomStrings.dart';

class WePlay extends StatelessWidget {
  const WePlay({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Text(
              CustomStrings.TITLE_WEPLAY,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

  
  
}