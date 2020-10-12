import 'package:flutter/material.dart';
import 'package:weplay/utils/ImagePaths.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(ImagePaths.PROFILE_HEADER_IMAGE),
                  fit: BoxFit.cover
                ),
              ),
              height: MediaQuery.of(context).size.height * .40,
            )
          ],
        ),
      ),
    );
  }
}
