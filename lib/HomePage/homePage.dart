import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/ExplorePage/explorePage.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profilePage.dart';
import 'package:roome/RegisterPage/registerPage.dart';
import 'package:roome/TripPage/tripPage.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List imgList = ["assets/images/p5.jpg", "assets/images/l1.jpg"];
  void imageChange(int index) {}
  int _selectedPage = 0;
  final pageOptions = [
    ExplorePage(),
    TripPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: header, size: 18), title: Text("Explore", style: TextStyle(fontFamily: 'Oswald', fontSize: 14))),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: header, size: 18), title: Text("Trips", style: TextStyle(fontFamily: 'Oswald', fontSize: 14))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: header, size: 18), title: Text("Profile", style: TextStyle(fontFamily: 'Oswald', fontSize: 14)))
        ],
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}
