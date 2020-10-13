import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  final String title;
  final String value;

  AboutText({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14.0, color: Colors.blue[900]),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.blue[900],
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
