import 'package:flutter/material.dart';
import 'package:weplay/utils/CustomStrings.dart';

class Unity extends StatelessWidget {
  const Unity({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Text(
              CustomStrings.TITLE_UNITY,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
  
  
  
}