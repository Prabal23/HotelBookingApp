import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/ExplorePage/HotelDetails/RoomDetailsPage/roomDetailsPage.dart';
import 'package:roome/ExplorePage/HotelDetails/WriteReviewPage/writeReviewPage.dart';
import 'package:roome/LoginPage/ForgotPassPage/forgotPassPage.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:roome/SettingsPage/FeedbackPage/feedbackPage.dart';
import '../../main.dart';

class HotelDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotelDetailsPageState();
  }
}

class HotelDetailsPageState extends State<HotelDetailsPage> {
  int page = 0, bookmark = 0;
  String des = "";
  String firstHalf;
  String secondHalf;
  bool flag = true;

  @override
  void initState() {
    des =
        "This hotel is located in the city center, surrounded by the well-known scenic spots like Tiananmen Square, Forbidden City and the Temple of Heaven. It has 300 rooms equipped with complete facilities and functions. The Old House 1918 Café is located on the first floor of the auxiliary building and from the top floor guests can have one of the best views of Beijing’s old city.";
    if (des.length > 150) {
      firstHalf = des.substring(0, 150);
      secondHalf = des.substring(150, des.length);
    } else {
      firstHalf = des;
      secondHalf = "";
    }
    super.initState();
  }

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
                        //labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new TabBarView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(top: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 0, left: 20, right: 20),
                                  child: Container(
                                    height: 220,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/h1.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                    child: null,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      left: 20, right: 5, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 5, left: 0, bottom: 0),
                                                child: Text(
                                                  "Grand Sultan Tea Resort and Golf",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Oswald',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        //width: MediaQuery.of(context).size.width,
                                        margin:
                                            EdgeInsets.only(top: 2, bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 0, left: 0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: <Widget>[
                                                            Expanded(
                                                              child: Text(
                                                                "Sreemongol, Sylhet",
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Oswald',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 15),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Icon(
                                                              Icons
                                                                  .attach_money,
                                                              color: Colors
                                                                  .black87,
                                                              size: 14),
                                                          Text(
                                                            "220",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87,
                                                                fontSize: 14,
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
                                                  top: 3, left: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    child: Row(
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          child: Icon(
                                                            Icons.phone,
                                                            color: header,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 3),
                                                          child: Text(
                                                            "+88 01720-848705",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black54,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  //Container(),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          "/per night",
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black45,
                                                              fontSize: 13,
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
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin: EdgeInsets.only(
                                                    top: 20,
                                                    left: 0,
                                                    right: 15),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15.0)),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 3.0,
                                                        color: Colors.black38,
                                                        //offset: Offset(6.0, 7.0),
                                                      ),
                                                    ],
                                                    border: Border.all(
                                                        width: 0.15,
                                                        color:
                                                            Colors.black38))),
                                            Container(
                                              margin: EdgeInsets.only(top: 15),
                                              child: Text(
                                                "Description",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 14,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, right: 15),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    flag = !flag;
                                                  });
                                                },
                                                child: Container(
                                                  child: secondHalf == ""
                                                      ? new Text(firstHalf,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  "Oswald",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300))
                                                      : RichText(
                                                          textAlign:
                                                              TextAlign.justify,
                                                          text: TextSpan(
                                                            children: <
                                                                TextSpan>[
                                                              TextSpan(
                                                                  text: flag
                                                                      ? firstHalf +
                                                                          "..."
                                                                      : firstHalf +
                                                                          secondHalf,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              0.7),
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          "Oswald",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300)),
                                                              TextSpan(
                                                                  text: flag
                                                                      ? " Read more"
                                                                      : "",
                                                                  style: TextStyle(
                                                                      color:
                                                                          header,
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          "Oswald",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)),
                                                              // can add more TextSpans here...
                                                            ],
                                                          ),
                                                        ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin: EdgeInsets.only(
                                                  top: 30, left: 0, right: 0),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        color: header,
                                                        fontSize: 30,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          "Overall Rating",
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Oswald',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                        ),
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
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 0),
                                                    child: Text(
                                                      "Room",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize: 13,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 22),
                                                      child:
                                                          LinearPercentIndicator(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            100,
                                                        lineHeight: 5.0,
                                                        percent: 0.95,
                                                        // center: Text(
                                                        //   "50.0%",
                                                        //   style:
                                                        //       new TextStyle(fontSize: 12.0),
                                                        // ),
                                                        // trailing: Text(
                                                        //   "95%",
                                                        //   textAlign: TextAlign.start,
                                                        //   style: TextStyle(
                                                        //       color: Colors.black54,
                                                        //       fontSize: 13,
                                                        //       fontFamily: 'Oswald',
                                                        //       fontWeight: FontWeight.w300),
                                                        // ),
                                                        linearStrokeCap:
                                                            LinearStrokeCap
                                                                .roundAll,
                                                        backgroundColor:
                                                            Colors.white,
                                                        progressColor: header,
                                                      ),
                                                    ),
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       right: 15),
                                                  //   child: Text(
                                                  //     "95%",
                                                  //     textAlign: TextAlign.start,
                                                  //     style: TextStyle(
                                                  //         color: Colors.black54,
                                                  //         fontSize: 13,
                                                  //         fontFamily: 'Oswald',
                                                  //         fontWeight:
                                                  //             FontWeight.w300),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 0),
                                                    child: Text(
                                                      "Service",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize: 13,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 15),
                                                      child:
                                                          LinearPercentIndicator(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            100,
                                                        lineHeight: 5.0,
                                                        percent: 0.80,
                                                        // center: Text(
                                                        //   "50.0%",
                                                        //   style:
                                                        //       new TextStyle(fontSize: 12.0),
                                                        // ),
                                                        // trailing: Text(
                                                        //   "95%",
                                                        //   textAlign: TextAlign.start,
                                                        //   style: TextStyle(
                                                        //       color: Colors.black54,
                                                        //       fontSize: 13,
                                                        //       fontFamily: 'Oswald',
                                                        //       fontWeight: FontWeight.w300),
                                                        // ),
                                                        linearStrokeCap:
                                                            LinearStrokeCap
                                                                .roundAll,
                                                        backgroundColor:
                                                            Colors.white,
                                                        progressColor: header,
                                                      ),
                                                    ),
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       right: 15),
                                                  //   child: Text(
                                                  //     "80%",
                                                  //     textAlign: TextAlign.start,
                                                  //     style: TextStyle(
                                                  //         color: Colors.black54,
                                                  //         fontSize: 13,
                                                  //         fontFamily: 'Oswald',
                                                  //         fontWeight:
                                                  //             FontWeight.w300),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 0),
                                                    child: Text(
                                                      "Location",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize: 13,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child:
                                                          LinearPercentIndicator(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            100,
                                                        lineHeight: 5.0,
                                                        percent: 0.85,
                                                        // center: Text(
                                                        //   "50.0%",
                                                        //   style:
                                                        //       new TextStyle(fontSize: 12.0),
                                                        // ),
                                                        // trailing: Text(
                                                        //   "95%",
                                                        //   textAlign: TextAlign.start,
                                                        //   style: TextStyle(
                                                        //       color: Colors.black54,
                                                        //       fontSize: 13,
                                                        //       fontFamily: 'Oswald',
                                                        //       fontWeight: FontWeight.w300),
                                                        // ),
                                                        linearStrokeCap:
                                                            LinearStrokeCap
                                                                .roundAll,
                                                        backgroundColor:
                                                            Colors.white,
                                                        progressColor: header,
                                                      ),
                                                    ),
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       right: 15),
                                                  //   child: Text(
                                                  //     "85%",
                                                  //     textAlign: TextAlign.start,
                                                  //     style: TextStyle(
                                                  //         color: Colors.black54,
                                                  //         fontSize: 13,
                                                  //         fontFamily: 'Oswald',
                                                  //         fontWeight:
                                                  //             FontWeight.w300),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 0),
                                                    child: Text(
                                                      "Food",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize: 13,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 27),
                                                      child:
                                                          LinearPercentIndicator(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            100,
                                                        lineHeight: 5.0,
                                                        percent: 0.70,
                                                        // center: Text(
                                                        //   "50.0%",
                                                        //   style:
                                                        //       new TextStyle(fontSize: 12.0),
                                                        // ),
                                                        // trailing: Text(
                                                        //   "95%",
                                                        //   textAlign: TextAlign.start,
                                                        //   style: TextStyle(
                                                        //       color: Colors.black54,
                                                        //       fontSize: 13,
                                                        //       fontFamily: 'Oswald',
                                                        //       fontWeight: FontWeight.w300),
                                                        // ),
                                                        linearStrokeCap:
                                                            LinearStrokeCap
                                                                .roundAll,
                                                        backgroundColor:
                                                            Colors.white,
                                                        progressColor: header,
                                                      ),
                                                    ),
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       right: 15),
                                                  //   child: Text(
                                                  //     "70%",
                                                  //     textAlign: TextAlign.start,
                                                  //     style: TextStyle(
                                                  //         color: Colors.black54,
                                                  //         fontSize: 13,
                                                  //         fontFamily: 'Oswald',
                                                  //         fontWeight:
                                                  //             FontWeight.w300),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 5, bottom: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 0),
                                                    child: Text(
                                                      "Price",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize: 13,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 25),
                                                      child:
                                                          LinearPercentIndicator(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width -
                                                            100,
                                                        lineHeight: 5.0,
                                                        percent: 0.78,
                                                        // center: Text(
                                                        //   "50.0%",
                                                        //   style:
                                                        //       new TextStyle(fontSize: 12.0),
                                                        // ),
                                                        // trailing: Text(
                                                        //   "95%",
                                                        //   textAlign: TextAlign.start,
                                                        //   style: TextStyle(
                                                        //       color: Colors.black54,
                                                        //       fontSize: 13,
                                                        //       fontFamily: 'Oswald',
                                                        //       fontWeight: FontWeight.w300),
                                                        // ),
                                                        linearStrokeCap:
                                                            LinearStrokeCap
                                                                .roundAll,
                                                        backgroundColor:
                                                            Colors.white,
                                                        progressColor: header,
                                                      ),
                                                    ),
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       right: 15),
                                                  //   child: Text(
                                                  //     "78%",
                                                  //     textAlign: TextAlign.start,
                                                  //     style: TextStyle(
                                                  //         color: Colors.black54,
                                                  //         fontSize: 13,
                                                  //         fontFamily: 'Oswald',
                                                  //         fontWeight:
                                                  //             FontWeight.w300),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
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
                      ),
                      CustomScrollView(
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 11),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Room category",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Oswald'),
                                    ),
                                  ],
                                )),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RoomDetailsPage()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 10),
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
                                  child: Column(
                                    children: <Widget>[
                                      new Container(
                                        padding: EdgeInsets.only(left: 0),
                                        height: 160,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: index == 0
                                                ? AssetImage(
                                                    "assets/images/h2.jpg")
                                                : AssetImage(
                                                    "assets/images/h3.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15.0),
                                              topRight: Radius.circular(15.0)),
                                          // border: Border.all(width: 0.2, color: Colors.grey)
                                        ),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                                height: 160,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.15),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  15.0)),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
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
                                              //width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 10,
                                                  right: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 5,
                                                                        left: 4,
                                                                        bottom:
                                                                            0,
                                                                        right:
                                                                            15),
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      index == 0
                                                                          ? "Deluxe Room"
                                                                          : "Premium Room",
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              17,
                                                                          fontFamily:
                                                                              'Oswald',
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                  ],
                                                                )),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 2,
                                                                      left: 0),
                                                              child: Row(
                                                                children: <
                                                                    Widget>[
                                                                  Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            right:
                                                                                0),
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
                                                                            Container(
                                                                              margin: EdgeInsets.only(top: 2),
                                                                              child: Icon(Icons.attach_money, color: Colors.black54, size: 17),
                                                                            ),
                                                                            Text(
                                                                              index == 0 ? "180" : "220",
                                                                              textAlign: TextAlign.start,
                                                                              style: TextStyle(color: Colors.black54, fontSize: 13, decoration: index % 2 == 0 ? TextDecoration.lineThrough : TextDecoration.none, fontFamily: 'Oswald', fontWeight: FontWeight.w400),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            right:
                                                                                5),
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
                                                                            Text(
                                                                              index == 0 ? "/per night" : "/per night",
                                                                              textAlign: TextAlign.start,
                                                                              style: TextStyle(color: Colors.black45, fontSize: 13, decoration: index % 2 == 0 ? TextDecoration.lineThrough : TextDecoration.none, fontFamily: 'Oswald', fontWeight: FontWeight.w300),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    child: index %
                                                                                2 ==
                                                                            0
                                                                        ? Row(
                                                                            children: <Widget>[
                                                                              Container(
                                                                                margin: EdgeInsets.only(right: 0),
                                                                                child: Row(
                                                                                  children: <Widget>[
                                                                                    Text(
                                                                                      index == 0 ? "153" : "220",
                                                                                      textAlign: TextAlign.start,
                                                                                      style: TextStyle(color: Colors.black54, fontSize: 13, fontFamily: 'Oswald', fontWeight: FontWeight.w400),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: EdgeInsets.only(right: 15),
                                                                                child: Row(
                                                                                  children: <Widget>[
                                                                                    Text(
                                                                                      index == 0 ? "/per night" : "/per night",
                                                                                      textAlign: TextAlign.start,
                                                                                      style: TextStyle(color: Colors.black45, fontSize: 13, fontFamily: 'Oswald', fontWeight: FontWeight.w300),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          )
                                                                        : Container(),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5,
                                                                bottom: 5,
                                                                right: 6,
                                                                left: 6),
                                                        margin: EdgeInsets.only(
                                                            right: 0, left: 3),
                                                        decoration: BoxDecoration(
                                                            color: index % 2 ==
                                                                    0
                                                                ? header
                                                                : Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                        child: Text(
                                                          index == 0
                                                              ? "15% Off"
                                                              : "5% Off",
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 11,
                                                              fontFamily:
                                                                  'Oswald',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
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
                                    ],
                                  ),
                                ),
                              );
                            }, childCount: 2),
                          )
                        ],
                      ),
                      CustomScrollView(
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "List of photos",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Oswald'),
                                    ),
                                  ],
                                )),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            sliver: Container(
                              child: SliverGrid(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Container(
                                          //color: Colors.blue,
                                          margin: EdgeInsets.only(
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                              top: 0),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0)),
                                            // color: Colors.white,
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //     blurRadius: 3.0,
                                            //     color:
                                            //         Colors.black.withOpacity(.2),
                                            //     //offset: Offset(6.0, 7.0),
                                            //   ),
                                            // ],
                                            // border: Border.all(width: 0.2, color: Colors.grey)
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              new Container(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  height: 145,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: index == 0
                                                            ? AssetImage(
                                                                "assets/images/h1.jpg")
                                                            : index == 1
                                                                ? AssetImage(
                                                                    "assets/images/h2.jpg")
                                                                : index == 2
                                                                    ? AssetImage(
                                                                        "assets/images/h3.jpg")
                                                                    : index == 3
                                                                        ? AssetImage(
                                                                            "assets/images/h4.jpg")
                                                                        : index ==
                                                                                4
                                                                            ? AssetImage("assets/images/h2.jpg")
                                                                            : AssetImage("assets/images/h1.jpg"),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft:
                                                                  Radius.circular(
                                                                      15.0),
                                                              topRight:
                                                                  Radius.circular(
                                                                      15.0),
                                                              bottomLeft:
                                                                  Radius
                                                                      .circular(
                                                                          15.0),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      15.0)),
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          width: 0.2,
                                                          color: Colors.grey)),
                                                  child: null),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  childCount: 6,
                                ),
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 190.0,
                                  mainAxisSpacing: 0.0,
                                  crossAxisSpacing: 0.0,
                                  childAspectRatio: 1.0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      CustomScrollView(
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 5),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        color: Colors.black
                                                            .withOpacity(0.7),
                                                        fontSize: 30,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  // Text(
                                                  //   "/5",
                                                  //   style: TextStyle(
                                                  //       color: Colors.black
                                                  //           .withOpacity(0.3),
                                                  //       fontSize: 14,
                                                  //       fontFamily: 'Oswald',
                                                  //       fontWeight:
                                                  //           FontWeight.bold),
                                                  // ),
                                                ],
                                              ),
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
                                              Text(
                                                "5,328",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    fontSize: 13,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, left: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 0),
                                                          child: Text(
                                                            "5*",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.7),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0),
                                                            child:
                                                                LinearPercentIndicator(
                                                              lineHeight: 5.0,
                                                              percent: 0.95,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .roundAll,
                                                              backgroundColor:
                                                                  back,
                                                              progressColor:
                                                                  header,
                                                            ),
                                                          ),
                                                        ),
                                                        // Container(
                                                        //   margin:
                                                        //       EdgeInsets.only(
                                                        //           right: 0),
                                                        //   child: Text(
                                                        //     "4,465",
                                                        //     textAlign:
                                                        //         TextAlign.start,
                                                        //     style: TextStyle(
                                                        //         color: Colors
                                                        //             .black54,
                                                        //         fontSize: 13,
                                                        //         fontFamily:
                                                        //             'Oswald',
                                                        //         fontWeight:
                                                        //             FontWeight
                                                        //                 .w300),
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, left: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 0),
                                                          child: Text(
                                                            "4*",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.7),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0),
                                                            child:
                                                                LinearPercentIndicator(
                                                              lineHeight: 5.0,
                                                              percent: 0.15,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .roundAll,
                                                              backgroundColor:
                                                                  back,
                                                              progressColor:
                                                                  header,
                                                            ),
                                                          ),
                                                        ),
                                                        // Container(
                                                        //   margin:
                                                        //       EdgeInsets.only(
                                                        //           right: 0),
                                                        //   child: Text(
                                                        //     "181",
                                                        //     textAlign:
                                                        //         TextAlign.start,
                                                        //     style: TextStyle(
                                                        //         color: Colors
                                                        //             .black54,
                                                        //         fontSize: 13,
                                                        //         fontFamily:
                                                        //             'Oswald',
                                                        //         fontWeight:
                                                        //             FontWeight
                                                        //                 .w300),
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, left: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 0),
                                                          child: Text(
                                                            "3*",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.7),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0),
                                                            child:
                                                                LinearPercentIndicator(
                                                              lineHeight: 5.0,
                                                              percent: 0.40,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .roundAll,
                                                              backgroundColor:
                                                                  back,
                                                              progressColor:
                                                                  header,
                                                            ),
                                                          ),
                                                        ),
                                                        // Container(
                                                        //   margin:
                                                        //       EdgeInsets.only(
                                                        //           right: 0),
                                                        //   child: Text(
                                                        //     "581",
                                                        //     textAlign:
                                                        //         TextAlign.start,
                                                        //     style: TextStyle(
                                                        //         color: Colors
                                                        //             .black54,
                                                        //         fontSize: 13,
                                                        //         fontFamily:
                                                        //             'Oswald',
                                                        //         fontWeight:
                                                        //             FontWeight
                                                        //                 .w300),
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, left: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 0),
                                                          child: Text(
                                                            "2*",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.7),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 0),
                                                            child:
                                                                LinearPercentIndicator(
                                                              lineHeight: 5.0,
                                                              percent: 0.08,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .roundAll,
                                                              backgroundColor:
                                                                  back,
                                                              progressColor:
                                                                  header,
                                                            ),
                                                          ),
                                                        ),
                                                        // Container(
                                                        //   margin:
                                                        //       EdgeInsets.only(
                                                        //           right: 0),
                                                        //   child: Text(
                                                        //     "68",
                                                        //     textAlign:
                                                        //         TextAlign.start,
                                                        //     style: TextStyle(
                                                        //         color: Colors
                                                        //             .black54,
                                                        //         fontSize: 13,
                                                        //         fontFamily:
                                                        //             'Oswald',
                                                        //         fontWeight:
                                                        //             FontWeight
                                                        //                 .w300),
                                                        //   ),
                                                        //),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, left: 40),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 0),
                                                          child: Text(
                                                            "1*",
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.7),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Oswald',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 2),
                                                            child:
                                                                LinearPercentIndicator(
                                                              // width: MediaQuery.of(
                                                              //             context)
                                                              //         .size
                                                              //         .width -
                                                              //     220,
                                                              lineHeight: 5.0,
                                                              percent: 0.05,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .roundAll,
                                                              backgroundColor:
                                                                  back,
                                                              progressColor:
                                                                  header,
                                                            ),
                                                          ),
                                                        ),
                                                        // Container(
                                                        //   margin:
                                                        //       EdgeInsets.only(
                                                        //           right: 0),
                                                        //   child: Text(
                                                        //     "33",
                                                        //     textAlign:
                                                        //         TextAlign.start,
                                                        //     style: TextStyle(
                                                        //         color: Colors
                                                        //             .black54,
                                                        //         fontSize: 13,
                                                        //         fontFamily:
                                                        //             'Oswald',
                                                        //         fontWeight:
                                                        //             FontWeight
                                                        //                 .w300),
                                                        //   ),
                                                        // ),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(
                                            top: 20, left: 0, right: 0),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Colors.black38,
                                                //offset: Offset(6.0, 7.0),
                                              ),
                                            ],
                                            border: Border.all(
                                                width: 0.15,
                                                color: Colors.black38))),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Reviews ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: 'Oswald'),
                                              ),
                                              Text(
                                                "(20)",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: 'Oswald'),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          WriteReviewPage()));
                                            },
                                            child: Container(
                                              child: Text(
                                                "Write a review",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: header,
                                                    fontSize: 13,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Container(
                                    //     width:
                                    //         MediaQuery.of(context).size.width,
                                    //     margin: EdgeInsets.only(
                                    //         top: 10, left: 0, right: 0),
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.all(
                                    //             Radius.circular(15.0)),
                                    //         color: Colors.white,
                                    //         boxShadow: [
                                    //           BoxShadow(
                                    //             blurRadius: 3.0,
                                    //             color: Colors.black38,
                                    //             //offset: Offset(6.0, 7.0),
                                    //           ),
                                    //         ],
                                    //         border: Border.all(
                                    //             width: 0.15,
                                    //             color: Colors.black38))),
                                  ],
                                )),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return Container(
                                    //color: Colors.blue,
                                    //padding: EdgeInsets.all(15),
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, bottom: 5, top: 20),
                                    // decoration: BoxDecoration(
                                    //   borderRadius: BorderRadius.all(
                                    //       Radius.circular(15.0)),
                                    //   color: Colors.white,
                                    //   boxShadow: [
                                    //     BoxShadow(
                                    //       blurRadius: 3.0,
                                    //       color: Colors.black.withOpacity(.2),
                                    //       //offset: Offset(6.0, 7.0),
                                    //     ),
                                    //   ],
                                    //   // border: Border.all(width: 0.2, color: Colors.grey)
                                    // ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Expanded(
                                              child: Row(
                                                children: <Widget>[
                                                  Center(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 0, top: 0),
                                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                                      padding:
                                                          EdgeInsets.all(1.0),
                                                      child: CircleAvatar(
                                                        radius: 25.0,
                                                        backgroundColor:
                                                            Colors.white,
                                                        backgroundImage: AssetImage(
                                                            'assets/images/man.png'),
                                                      ),
                                                      decoration:
                                                          new BoxDecoration(
                                                        color: Colors.grey[
                                                            200], // border color
                                                        shape: BoxShape.circle,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    .2),
                                                            //offset: Offset(6.0, 7.0),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Text(
                                                              "John Smith",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 17,
                                                                  fontFamily:
                                                                      'Oswald',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Container(
                                                                child: Text(
                                                                  "Aug 29, 2019",
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
                                                              ),
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
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "I am very happy with the hotel service. Very tasty foods, beautiful locations, pool water was clean. The people working there was very warm and friendly. Overall the hotel is very good. I recommend everyone to visit there.",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.only(
                                                top: 30, left: 0, right: 0),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 3.0,
                                                    color: Colors.black38,
                                                    //offset: Offset(6.0, 7.0),
                                                  ),
                                                ],
                                                border: Border.all(
                                                    width: 0.15,
                                                    color: Colors.black38))),
                                      ],
                                    ),
                                  );
                                },
                                childCount: 6,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void pageRouting() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RoomDetailsPage()));
  }
}
