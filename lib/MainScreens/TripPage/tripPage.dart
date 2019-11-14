import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/FavTripPage/favTripPage.dart';
import 'package:roome/MainScreens/FinishedTripPage/finishedTripPage.dart';

import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';
import 'package:roome/MainScreens/UpcomingTripPage/upcomingTripPage.dart';
import 'dart:io';

import '../../main.dart';

class TripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TripPageState();
  }
}

class TripPageState extends State<TripPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 3,
          child: SafeArea(
            child: new Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "My Trips",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Oswald'),
                    )),
                new Container(
                  //constraints: BoxConstraints(maxHeight: 150.0),
                  child: new Material(
                    //color: header,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          color: back,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          //border: Border.all(color: sub_white, width: 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: new TabBar(
                        labelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        tabs: [
                          new Tab(
                            text: "Upcoming",
                          ),
                          new Tab(
                            text: "Finished",
                          ),
                          new Tab(
                            text: "Favourites",
                          ),
                        ],
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Colors.black45,
                        unselectedLabelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        labelColor: header,
                        //labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                new Expanded(
                  child: new TabBarView(
                    children: [
                      UpcomingTripPage(),
                      FinishedTripPage(),
                      FavTripPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
