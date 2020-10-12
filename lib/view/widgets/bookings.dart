import 'package:flutter/material.dart';

class Bookings extends StatelessWidget {
  final String name;
  final String amount;

  Bookings({
    Key key,
    @required this.name,
    @required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 4.0,
      child: InkWell(
        onTap: () => print("tapped"),
        child: Container(

          padding: EdgeInsets.only(top: 5.0, bottom: 0.0, right: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Column(
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepPurple[400],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "$amount",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
