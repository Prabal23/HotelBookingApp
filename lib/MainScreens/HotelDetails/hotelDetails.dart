import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:roome/MainScreens/HotelAboutPage/hotelAboutPage.dart';
import 'package:roome/MainScreens/HotelGalleryPage/hotelGalleryPage.dart';
import 'package:roome/MainScreens/HotelReviewPage/hotelReviewPage.dart';
import 'package:roome/MainScreens/HotelRoomPage/hotelRoomPage.dart';
import 'package:roome/MainScreens/RoomDetailsPage/roomDetailsPage.dart';
import 'package:roome/MainScreens/WriteReviewPage/writeReviewPage.dart';
import '../../main.dart';

class HotelDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotelDetailsPageState();
  }
}

class HotelDetailsPageState extends State<HotelDetailsPage> {
  int bookmark = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 4,
          child: SafeArea(
            child: new Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0, left: 5, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 15),
                            child: BackButton(),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "Hotel Details",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Oswald'),
                              )),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            bookmark++;
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.white),
                            child: Icon(
                              bookmark % 2 == 0
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: header,
                            )),
                      ),
                    ],
                  ),
                ),
                new Container(
                  child: new Material(
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
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: new TabBar(
                        labelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        tabs: [
                          new Tab(
                            text: "About",
                          ),
                          new Tab(
                            text: "Rooms",
                          ),
                          new Tab(
                            text: "Gallery",
                          ),
                          new Tab(
                            text: "Review",
                          ),
                        ],
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Colors.black45,
                        unselectedLabelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        labelColor: header,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new TabBarView(
                    children: [
                      HotelAboutPage(),
                      HotelRoomPage(),
                      HotelGalleryPage(),
                      HotelReviewPage()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
