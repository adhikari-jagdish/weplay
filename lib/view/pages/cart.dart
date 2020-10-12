import 'package:flutter/material.dart';
import 'package:weplay/utils/CustomStrings.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(
      child: Scaffold(
          body: Center(
            child: Text(
              CustomStrings.TITLE_CART,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
