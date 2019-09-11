import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/ExplorePage/HotelDetails/hotelDetails.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../main.dart';

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
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) =>
                                GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HotelDetailsPage()));
                              },
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            index != 0
                                                ? "5 Jan - 11 Jan"
                                                : "12 Aug - 20 Aug",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            ", ",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            index != 0
                                                ? "1 Room - 2 Persons"
                                                : "2 Rooms - 5 Persons",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0)),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Colors.black.withOpacity(.2),
                                            //offset: Offset(6.0, 7.0),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          new Container(
                                            padding: EdgeInsets.only(left: 0),
                                            height: 90,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: index != 0
                                                    ? AssetImage(
                                                        "assets/images/h1.jpg")
                                                    : AssetImage(
                                                        "assets/images/h4.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(15.0),
                                                  bottomLeft:
                                                      Radius.circular(15.0)),
                                              // border: Border.all(width: 0.2, color: Colors.grey)
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.15),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      15.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      15.0)),
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin: EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    left: 0,
                                                                    bottom: 0),
                                                            child: Text(
                                                              index != 0
                                                                  ? "Grand Royal Hotel"
                                                                  : "Queens Hotel",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 17,
                                                                  fontFamily:
                                                                      'Oswald',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    //width: MediaQuery.of(context).size.width,
                                                    margin: EdgeInsets.only(
                                                        top: 0, bottom: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 0,
                                                                    left: 0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Text(
                                                                        index !=
                                                                                0
                                                                            ? "Manchester, England"
                                                                            : "Leistershire, England",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .grey,
                                                                            fontSize:
                                                                                13,
                                                                            fontFamily:
                                                                                'Oswald',
                                                                            fontWeight:
                                                                                FontWeight.w300),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              15),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Icon(
                                                                          Icons
                                                                              .attach_money,
                                                                          color: Colors
                                                                              .black87,
                                                                          size:
                                                                              14),
                                                                      Text(
                                                                        index !=
                                                                                0
                                                                            ? "180"
                                                                            : "220",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black87,
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'Oswald',
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 0,
                                                                  left: 0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_half,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            15),
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      index == 0
                                                                          ? "/per night"
                                                                          : "/per night",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black45,
                                                                          fontSize:
                                                                              12,
                                                                          fontFamily:
                                                                              'Oswald',
                                                                          fontWeight:
                                                                              FontWeight.w300),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Colors.white,
                                              //offset: Offset(6.0, 7.0),
                                            ),
                                          ],
                                          border: Border.all(
                                              width: 0.5, color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) =>
                                GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HotelDetailsPage()));
                              },
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                index == 0
                                                    ? "5 Jan - 11 Jan"
                                                    : "12 Aug - 20 Aug",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 11,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              Text(
                                                ", ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 11,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              Text(
                                                index == 0
                                                    ? "1 Room - 2 Persons"
                                                    : "2 Rooms - 5 Persons",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 11,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 3),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                // Text("Finished",
                                                //   textAlign: TextAlign.start,
                                                //   style: TextStyle(
                                                //       color: header,
                                                //       fontSize: 13,
                                                //       fontFamily: 'Oswald',
                                                //       fontWeight: FontWeight.w400),
                                                // ),
                                                Icon(Icons.done,
                                                    color: header, size: 18)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0)),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Colors.black.withOpacity(.2),
                                            //offset: Offset(6.0, 7.0),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          new Container(
                                            padding: EdgeInsets.only(left: 0),
                                            height: 90,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: index == 0
                                                    ? AssetImage(
                                                        "assets/images/h1.jpg")
                                                    : AssetImage(
                                                        "assets/images/h4.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(15.0),
                                                  bottomLeft:
                                                      Radius.circular(15.0)),
                                              // border: Border.all(width: 0.2, color: Colors.grey)
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.15),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      15.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      15.0)),
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin: EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    left: 0,
                                                                    bottom: 0),
                                                            child: Text(
                                                              index == 0
                                                                  ? "Grand Royal Hotel"
                                                                  : "Queens Hotel",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 17,
                                                                  fontFamily:
                                                                      'Oswald',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    //width: MediaQuery.of(context).size.width,
                                                    margin: EdgeInsets.only(
                                                        top: 0, bottom: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 0,
                                                                    left: 0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Text(
                                                                        index ==
                                                                                0
                                                                            ? "Manchester, England"
                                                                            : "Leistershire, England",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .grey,
                                                                            fontSize:
                                                                                13,
                                                                            fontFamily:
                                                                                'Oswald',
                                                                            fontWeight:
                                                                                FontWeight.w300),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              15),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Icon(
                                                                          Icons
                                                                              .attach_money,
                                                                          color: Colors
                                                                              .black87,
                                                                          size:
                                                                              14),
                                                                      Text(
                                                                        index ==
                                                                                0
                                                                            ? "180"
                                                                            : "220",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black87,
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'Oswald',
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 0,
                                                                  left: 0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_half,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            15),
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      index == 0
                                                                          ? "/per night"
                                                                          : "/per night",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black45,
                                                                          fontSize:
                                                                              12,
                                                                          fontFamily:
                                                                              'Oswald',
                                                                          fontWeight:
                                                                              FontWeight.w300),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Colors.white,
                                              //offset: Offset(6.0, 7.0),
                                            ),
                                          ],
                                          border: Border.all(
                                              width: 0.5, color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) =>
                                GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HotelDetailsPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 0, bottom: 10),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(.2),
                                      //offset: Offset(6.0, 7.0),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    new Container(
                                      padding: EdgeInsets.only(left: 0),
                                      height: 90,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: index == 0
                                              ? AssetImage(
                                                  "assets/images/h1.jpg")
                                              : AssetImage(
                                                  "assets/images/h4.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0)),
                                        // border: Border.all(width: 0.2, color: Colors.grey)
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                              height: 90,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.15),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15.0),
                                                    bottomLeft:
                                                        Radius.circular(15.0)),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5,
                                                          left: 0,
                                                          bottom: 0),
                                                      child: Text(
                                                        index == 0
                                                            ? "Grand Royal Hotel"
                                                            : "Queens Hotel",
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Oswald',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.only(
                                                  top: 0, bottom: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: 0, left: 0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  index == 0
                                                                      ? "Manchester, England"
                                                                      : "Leistershire, England",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          'Oswald',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 15),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Icon(
                                                                    Icons
                                                                        .attach_money,
                                                                    color: Colors
                                                                        .black87,
                                                                    size: 14),
                                                                Text(
                                                                  index == 0
                                                                      ? "180"
                                                                      : "220",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      fontSize:
                                                                          12,
                                                                      fontFamily:
                                                                          'Oswald',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 0, left: 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          child: Row(
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons.star,
                                                                color: header,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: header,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: header,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: header,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star_half,
                                                                color: header,
                                                                size: 13,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 15),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Text(
                                                                index == 0
                                                                    ? "/per night"
                                                                    : "/per night",
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black45,
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        'Oswald',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
