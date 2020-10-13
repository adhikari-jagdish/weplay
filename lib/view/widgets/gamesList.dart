import 'package:flutter/material.dart';

class GamesList extends StatelessWidget {
  final String name;
  final String position;
  final String image;

  GamesList({
    Key key,
    @required this.name,
    @required this.position,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: ExactAssetImage(image), fit: BoxFit.fill),
          ),
        ),
        SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.0),
            Text(
              position,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
