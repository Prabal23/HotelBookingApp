import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/CouponPage/CouponDetails/couponDetails.dart';
import 'package:roome/ExplorePage/HotelDetails/RoomDetailsPage/roomDetailsPage.dart';
import 'package:roome/ExplorePage/HotelDetails/WriteReviewPage/writeReviewPage.dart';
import 'package:roome/LoginPage/ForgotPassPage/forgotPassPage.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:roome/SettingsPage/FeedbackPage/feedbackPage.dart';
import '../main.dart';

class CouponPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CouponPageState();
  }
}

class CouponPageState extends State<CouponPage> {
  int page = 0, bookmark = 0;
  String des = "";
  String firstHalf;
  String secondHalf;
  bool flag = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 2,
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
                                "Credits & Coupons",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Oswald'),
                              )),
                        ],
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
                            text: "New",
                          ),
                          new Tab(
                            text: "All",
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
                      CustomScrollView(
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 11),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "New Offers",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Oswald'),
                                    ),
                                    Text(
                                      " (2)",
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
                              return Container(
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
                                      width: MediaQuery.of(context).size.width,
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
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15.0),
                                                    topRight:
                                                        Radius.circular(15.0)),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
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
                                                top: 0, bottom: 10, right: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                                      left: 3,
                                                                      bottom: 0,
                                                                      right:
                                                                          15),
                                                              child: Row(
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    index == 0
                                                                        ? "15%"
                                                                        : "35%",
                                                                    maxLines: 1,
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
                                                                  Expanded(
                                                                    child: Text(
                                                                      index == 0
                                                                          ? " discount on 2 day stay"
                                                                          : " discount on holiday",
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              13,
                                                                          fontFamily:
                                                                              'Oswald',
                                                                          fontWeight:
                                                                              FontWeight.w300),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2,
                                                                    left: 0),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              0),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                3),
                                                                        child:
                                                                            Text(
                                                                          "Expiry Date : ",
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: TextStyle(
                                                                              color: Colors.black45,
                                                                              fontSize: 13,
                                                                              fontFamily: 'Oswald',
                                                                              fontWeight: FontWeight.w300),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        index ==
                                                                                0
                                                                            ? "Sep 15, 2019"
                                                                            : "Sep 21, 2019",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black45,
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
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2,
                                                                    left: 0),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            right:
                                                                                0),
                                                                    child: Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Icon(
                                                                          Icons
                                                                              .home,
                                                                          color:
                                                                              header,
                                                                          size:
                                                                              17,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            margin:
                                                                                EdgeInsets.only(left: 3),
                                                                            child:
                                                                                Text(
                                                                              "Grand Sultan Tea Resort and Golf",
                                                                              textAlign: TextAlign.start,
                                                                              maxLines: 1,
                                                                              style: TextStyle(color: Colors.black54, fontSize: 12, fontFamily: 'Oswald', fontWeight: FontWeight.w300),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    CouponDetailsPage(
                                                                        page:
                                                                            "1")));
                                                      },
                                                      child: Container(
                                                          //width: 100,
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 0,
                                                                  right: 0,
                                                                  top: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          15))),
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "More",
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        header,
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Oswald',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                4, left: 3),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_forward,
                                                                      color:
                                                                          header,
                                                                      size: 13,
                                                                    ))
                                                              ],
                                                            ),
                                                          )),
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
                                    top: 20, left: 20, right: 20, bottom: 11),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "All Offers",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Oswald'),
                                    ),
                                    Text(
                                      " (2)",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Oswald'),
                                    ),
                                    // Container(
                                    //   child: Text(
                                    //     "2 offers",
                                    //     style: TextStyle(
                                    //         color: header,
                                    //         fontSize: 13,
                                    //         fontFamily: 'Oswald',
                                    //         fontWeight: FontWeight.w400),
                                    //   ),
                                    // )
                                  ],
                                )),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return Container(
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
                                      width: MediaQuery.of(context).size.width,
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
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15.0),
                                                    topRight:
                                                        Radius.circular(15.0)),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
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
                                                top: 0, bottom: 10, right: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                                      left: 3,
                                                                      bottom: 0,
                                                                      right:
                                                                          15),
                                                              child: Row(
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    index == 0
                                                                        ? "15%"
                                                                        : "35%",
                                                                    maxLines: 1,
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
                                                                  Expanded(
                                                                    child: Text(
                                                                      index == 0
                                                                          ? " discount on 2 day stay"
                                                                          : " discount on holiday",
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              13,
                                                                          fontFamily:
                                                                              'Oswald',
                                                                          fontWeight:
                                                                              FontWeight.w300),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2,
                                                                    left: 0),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              0),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                3),
                                                                        child:
                                                                            Text(
                                                                          "Expiry Date : ",
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: TextStyle(
                                                                              color: Colors.black45,
                                                                              fontSize: 13,
                                                                              fontFamily: 'Oswald',
                                                                              fontWeight: FontWeight.w300),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        index ==
                                                                                0
                                                                            ? "Sep 15, 2019"
                                                                            : "Sep 21, 2019",
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black45,
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
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2,
                                                                    left: 0),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            right:
                                                                                0),
                                                                    child: Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Icon(
                                                                          Icons
                                                                              .home,
                                                                          color:
                                                                              header,
                                                                          size:
                                                                              17,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            margin:
                                                                                EdgeInsets.only(left: 3),
                                                                            child:
                                                                                Text(
                                                                              "Grand Sultan Tea Resort and Golf",
                                                                              textAlign: TextAlign.start,
                                                                              maxLines: 1,
                                                                              style: TextStyle(color: Colors.black54, fontSize: 12, fontFamily: 'Oswald', fontWeight: FontWeight.w300),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    CouponDetailsPage(
                                                                        page:
                                                                            "2")));
                                                      },
                                                      child: Container(
                                                          //width: 100,
                                                          padding:
                                                              EdgeInsets.all(7),
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 0,
                                                                  right: 0,
                                                                  top: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          15))),
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                // Container(
                                                                //     margin: EdgeInsets
                                                                //         .only(
                                                                //             top:
                                                                //                 4),
                                                                //     child: Icon(
                                                                //       index % 2 ==
                                                                //               0
                                                                //           ? Icons
                                                                //               .close
                                                                //           : Icons
                                                                //               .done,
                                                                //       color: index %
                                                                //                   2 ==
                                                                //               0
                                                                //           ? Colors
                                                                //               .redAccent
                                                                //           : header,
                                                                //       size: 17,
                                                                //     )),
                                                                Text(
                                                                  index % 2 == 0
                                                                      ? "Expired"
                                                                      : "Available",
                                                                  style:
                                                                      TextStyle(
                                                                    color: index %
                                                                                2 ==
                                                                            0
                                                                        ? Colors
                                                                            .redAccent
                                                                        : header,
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Oswald',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                4, left: 3),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_forward,
                                                                      color: index % 2 ==
                                                                              0
                                                                          ? Colors
                                                                              .redAccent
                                                                          : header,
                                                                      size: 13,
                                                                    )),
                                                              ],
                                                            ),
                                                          )),
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
                              );
                            }, childCount: 2),
                          )
                        ],
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
