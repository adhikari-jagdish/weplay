import 'package:flutter/material.dart';
import 'package:weplay/utils/ImagePaths.dart';

class GamesList extends StatelessWidget {
  final String name;
  final String position;

  GamesList({
    Key key,
    @required this.name,
    @required this.position,
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
                image: ExactAssetImage(ImagePaths.ICON_FUTSAL),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(width: 25.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              position,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
