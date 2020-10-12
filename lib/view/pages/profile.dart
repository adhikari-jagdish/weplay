import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weplay/utils/CustomStrings.dart';
import 'package:weplay/utils/ImagePaths.dart';
import 'package:weplay/view/widgets/bookings.dart';
import 'package:weplay/view/widgets/gamesList.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(ImagePaths.PROFILE_HEADER_IMAGE),
                      fit: BoxFit.cover),
                ),
                height: MediaQuery.of(context).size.height * .40,
              ),
              SafeArea(
                  child: Column(
                children: [
                  _profileImage(),
                  _location(),
                  _bookingSummarycards(),
                  _gamesList(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  ///Profile Image and UserName/Name
  Widget _profileImage() {
    return Padding(
      padding: EdgeInsets.fromLTRB(70.0, 40.0, 15.0, 0),
      child: Row(
        children: [
          Container(
            width: 110.0,
            height: 110.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: ExactAssetImage(ImagePaths.WEPLAY_PROFILE_IMAGE),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 25.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CustomStrings.USERNAME,
                style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                CustomStrings.FULLNAME,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  ///Playing Position and Location
  Widget _location() {
    return Padding(
      padding: EdgeInsets.fromLTRB(90.0, 25.0, 10.0, 0),
      child: Row(
        children: [
          Text(
            CustomStrings.GOALKEEPER,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 35.0),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: ExactAssetImage(ImagePaths.ICON_MAP),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            CustomStrings.LOCATION,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  ///Booking Cancelled NoShow Cards
  Widget _bookingSummarycards() {
    return Container(
      padding: new EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
      child: new Container(
        height: 90.0,
        width: MediaQuery.of(context).size.width,
        child: GridView(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2.5),
          ),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: Bookings(
                name: "Bookings",
                amount: "40",
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: Bookings(
                name: "Cancelled",
                amount: "5",
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Bookings(
                name: "No-Show",
                amount: "5",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gamesList() {
    return Container(
      //alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(
          // top: MediaQuery.of(context).size.height * .47,
          top: 20.0,
          right: 20.0,
          left: 20.0),
      child: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            GamesList(
              name: "Cash",
              position: r"$1000.22",
            ),
            SizedBox(
              width: 10.0,
            ),
            GamesList(
              name: "Card",
              position: r"$450.25",
            ),
            SizedBox(
              width: 10.0,
            ),
            GamesList(
              name: "Paypal",
              position: r"$100.33",
            ),
          ],
        ),
      ),
    );
  }
}
