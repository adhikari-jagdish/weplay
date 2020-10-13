import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weplay/utils/CustomStrings.dart';
import 'package:weplay/utils/ImagePaths.dart';
import 'package:weplay/utils/custom_icons.dart';
import 'package:weplay/view/pages/cart.dart';
import 'package:weplay/view/pages/explore.dart';
import 'package:weplay/view/pages/profile.dart';
import 'package:weplay/view/pages/unity.dart';
import 'package:weplay/view/pages/weplay.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Key keyOne = PageStorageKey('PageOne');
  final Key keyTwo = PageStorageKey('PageTwo');
  final Key keyThree = PageStorageKey('PageThree');
  final Key keyFour = PageStorageKey('PageFour');
  final Key keyFive = PageStorageKey('PageFive');

  int _selectedIndex = 0;
  Explore _explore;
  Unity _unity;
  WePlay _wePlay;
  Cart _cart;
  Profile _profile;

  List<Widget> _pages;
  Widget _currentPage;
  final PageStorageBucket _bucket = PageStorageBucket();

  /*
  Initialize the page with respective keys
  Keys to be defines and assigned as per number of pages
   */
  @override
  void initState() {
    _explore = Explore(key: keyOne);
    _unity = Unity(key: keyTwo);
    _wePlay = WePlay(key: keyThree);
    _cart = Cart(key: keyFour);
    _profile = Profile(key: keyFive);

    _pages = [_explore, _unity, _wePlay, _cart, _profile];
    _currentPage = _explore;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        // child: pages[_selectedIndex],
        child: _currentPage,
        bucket: _bucket,
      ),
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavyBar(
        showElevation: true,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
            _currentPage = _pages[index];
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text(CustomStrings.TITLE_EXPLORE),
            activeColor: Colors.blueAccent,
          ),
          BottomNavyBarItem(
              icon: Icon(MyCustomIcons.handshake),
              title: Text(CustomStrings.TITLE_UNITY),
              activeColor: Colors.blueAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.add_circle),
              title: Text(CustomStrings.TITLE_WEPLAY),
              activeColor: Colors.blueAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(CustomStrings.TITLE_CART),
              activeColor: Colors.blueAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.perm_identity),
              title: Text(CustomStrings.TITLE_PROFILE),
              activeColor: Colors.blueAccent),
        ],
      );
}
