import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/ExplorePage/HotelDetails/hotelDetails.dart';
import 'package:roome/ExplorePage/HotelSearchPage/FilterPage/filterPage.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../../main.dart';

class HotelSearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotelSearchPageState();
  }
}

class HotelSearchPageState extends State<HotelSearchPage> {
  TextEditingController srch = new TextEditingController();
  int page = 0;
  int search = 0,
      yearInt = 0,
      yearCheck = 0,
      yearInt1 = 0,
      yearCheck1 = 0,
      count = 0,
      rooms = 0,
      roomInt = 0,
      adult = 0,
      adultInt = 0,
      children = 0,
      childrenInt = 0,
      person = 0,
      count1 = 0,
      err = 0;
  double _itemsliderValue1 = 20000.0;
  DateTime _date = DateTime.now();
  String day = '', month = '', year = '';
  String day1 = '', month1 = '', year1 = '';
  String error = "", dayCount = "31", dayCount1 = "31";
  List _day = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  List _day30 = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];
  List _dayLeap = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29"
  ];
  List _dayFeb = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28"
  ];
  List _months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<DropdownMenuItem<String>> _dropDownDayItems,
      _dropDownDayItems330,
      _dropDownDayItemsLeapp,
      _dropDownDayItemsFebb,
      _dropDownDayItems1,
      _dropDownDayItems30,
      _dropDownDayItemsLeap,
      _dropDownDayItemsFeb;
  List<DropdownMenuItem<String>> _dropDownMonthItems, _dropDownMonthItems1;

  List<DropdownMenuItem<String>> getDropDowndayItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _day) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItems330() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _day30) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItemsLeapp() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _dayLeap) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItemsFebb() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _dayFeb) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMonthItems() {
    List<DropdownMenuItem<String>> items1 = new List();
    for (String month in _months) {
      items1.add(new DropdownMenuItem(
          value: month,
          child: new Text(
            month,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items1;
  }

  List<DropdownMenuItem<String>> getDropDowndayItems1() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _day) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItems30() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _day30) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItemsleap() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _dayLeap) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDowndayItemsFeb() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _dayFeb) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMonthItems1() {
    List<DropdownMenuItem<String>> items1 = new List();
    for (String month in _months) {
      items1.add(new DropdownMenuItem(
          value: month,
          child: new Text(
            month,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )));
    }
    return items1;
  }

  @override
  void initState() {
    srch.text = "London";
    day = DateFormat("dd").format(_date);
    _dropDownDayItems = getDropDowndayItems();
    day = _dropDownDayItems[0].value;

    _dropDownDayItems330 = getDropDowndayItems330();
    day = _dropDownDayItems330[0].value;

    _dropDownDayItemsLeapp = getDropDowndayItemsLeapp();
    day = _dropDownDayItemsLeapp[0].value;

    _dropDownDayItemsFebb = getDropDowndayItemsFebb();
    day = _dropDownDayItemsFebb[0].value;

    month = DateFormat("MMM").format(_date);
    _dropDownMonthItems = getDropDownMonthItems();
    month = _dropDownMonthItems[0].value;

    year = DateFormat("yyyy").format(_date);
    yearInt = int.parse(year);
    yearCheck = int.parse(year);

    _dropDownDayItems1 = getDropDowndayItems1();
    day1 = _dropDownDayItems1[0].value;

    _dropDownDayItems30 = getDropDowndayItems30();
    day1 = _dropDownDayItems30[0].value;

    _dropDownDayItemsLeap = getDropDowndayItemsleap();
    day1 = _dropDownDayItemsLeap[0].value;

    _dropDownDayItemsFeb = getDropDowndayItemsFeb();
    day1 = _dropDownDayItemsFeb[0].value;

    _dropDownMonthItems1 = getDropDownMonthItems1();
    month1 = _dropDownMonthItems1[0].value;

    year1 = DateFormat("yyyy").format(_date);
    yearInt1 = int.parse(year1);
    yearCheck1 = int.parse(year);

    //person = adult + children;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0, left: 10, right: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: BackButton(),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Explore",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Oswald'),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                          decoration: BoxDecoration(
                            color: sub_white,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Material(
                                        // elevation: 20,
                                        // shape: BeveledRectangleBorder(
                                        //   borderRadius: BorderRadius.all(Radius.circular(100))
                                        // ),
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.all(10),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 0, top: 0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              // border: Border.all(
                                              //     color: Colors.grey, width: 0.3),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 2.0,
                                                  color: Colors.black
                                                      .withOpacity(.2),
                                                  //offset: Offset(6.0, 7.0),
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100)),
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(
                                                      Icons.search,
                                                      size: 19,
                                                      color: header,
                                                    )),
                                                Flexible(
                                                  child: TextField(
                                                    controller: srch,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontFamily: 'Oswald',
                                                    ),
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Where are you going next?",
                                                      hintStyle: TextStyle(
                                                          color: Colors.black38,
                                                          fontSize: 15,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                      //labelStyle: TextStyle(color: Colors.white70),
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(
                                                              10.0,
                                                              0.0,
                                                              10.0,
                                                              0.0),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(13),
                                        margin: EdgeInsets.only(
                                            left: 10,
                                            right: 20,
                                            top: 10,
                                            bottom: 10),
                                        decoration: BoxDecoration(
                                            color: header,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Colors.black
                                                    .withOpacity(.2),
                                                //offset: Offset(6.0, 7.0),
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                        child: Icon(Icons.search,
                                            color: Colors.white, size: 20)),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          //dateSelect();
                                          _showDateDialog();
                                        },
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      top: 5, left: 30),
                                                  child: Text(
                                                    "Choose Date",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Open Sans Condensed'),
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      top: 5, left: 30),
                                                  child: Text(
                                                    count == 0
                                                        ? "---"
                                                        : "$month $day - $month1 $day1",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 15,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 50,
                                        child: VerticalDivider(
                                          color: Colors.grey,
                                        )),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          _showPersonDialog();
                                        },
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      top: 5, left: 15),
                                                  child: Text(
                                                    "Room & Person",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Open Sans Condensed'),
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      top: 5, left: 15),
                                                  child: Text(
                                                    count1 == 0
                                                        ? "---"
                                                        : (roomInt > 1 &&
                                                                (adultInt +
                                                                        childrenInt) >
                                                                    1)
                                                            ? "$roomInt Rooms - ${adultInt + childrenInt} Persons"
                                                            : (roomInt == 1 &&
                                                                    (adultInt +
                                                                            childrenInt) >
                                                                        1)
                                                                ? "$roomInt Room - ${adultInt + childrenInt} Persons"
                                                                : (roomInt >
                                                                            1 &&
                                                                        (adultInt +
                                                                                childrenInt) ==
                                                                            1)
                                                                    ? "$roomInt Rooms - ${adultInt + childrenInt} Person"
                                                                    : "$roomInt Room - ${adultInt + childrenInt} Person",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 15,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Row(
                              //   children: <Widget>[
                              //     Expanded(
                              //       child: Container(
                              //           padding: EdgeInsets.all(10),
                              //           margin: EdgeInsets.only(
                              //               left: 20, right: 10, top: 20, bottom: 10),
                              //           decoration: BoxDecoration(
                              //               color: header,
                              //               borderRadius: BorderRadius.all(
                              //                   Radius.circular(100))),
                              //           child: Text(
                              //             "Search",
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 17,
                              //               fontFamily: 'BebasNeue',
                              //             ),
                              //             textAlign: TextAlign.center,
                              //           )),
                              //     ),
                              //     Expanded(
                              //       child: GestureDetector(
                              //         onTap: () {
                              //           setState(() {
                              //             search = 0;
                              //           });
                              //         },
                              //         child: Container(
                              //             padding: EdgeInsets.all(10),
                              //             margin: EdgeInsets.only(
                              //                 left: 10,
                              //                 right: 20,
                              //                 top: 20,
                              //                 bottom: 10),
                              //             decoration: BoxDecoration(
                              //                 color: Colors.white,
                              //                 border: Border.all(
                              //                     color: Colors.grey, width: 0.5),
                              //                 borderRadius: BorderRadius.all(
                              //                     Radius.circular(100))),
                              //             child: Text(
                              //               "Clear",
                              //               style: TextStyle(
                              //                 color: Colors.black45,
                              //                 fontSize: 17,
                              //                 fontFamily: 'BebasNeue',
                              //               ),
                              //               textAlign: TextAlign.center,
                              //             )),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "85 hotels found",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13,
                                      fontFamily: 'Oswald'),
                                ),
                                // Slider(
                                //   activeColor: header,
                                //   min: 10000.0,
                                //   max: 500000.0,
                                //   onChanged: (newRating) {
                                //     setState(() {
                                //      _itemsliderValue1 = newRating;
                                //      print("$_itemsliderValue1") ;
                                //     });
                                //   },
                                //   value: _itemsliderValue1,
                                // ),
                                // Text(
                                //   "View All",
                                //   textAlign: TextAlign.start,
                                //   style: TextStyle(
                                //       color: header,
                                //       fontSize: 13,
                                //       fontFamily: 'Oswald',
                                //       fontWeight: FontWeight.w400),
                                // ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FilterPagePage()));
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(Icons.filter_list,
                                          color: header, size: 22)),
                                )
                              ],
                            )),
                        Container(
                          //color: Colors.red,
                          margin: EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width,
                          //padding: EdgeInsets.only(left: 0),
                          height: 230,
                          child: Container(
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: new ListView.builder(
                                //scrollDirection: Axis.horizontal,
                                itemBuilder:
                                    (BuildContext context, int index) =>
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
                                        left: 20,
                                        right: 20,
                                        top: 0,
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
                                                topLeft: Radius.circular(15.0),
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
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15.0),
                                                            bottomLeft:
                                                                Radius.circular(
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
                                                      // Container(
                                                      //     margin:
                                                      //         EdgeInsets.only(top: 0, left: 0),
                                                      //     child: Text(
                                                      //       index == 0
                                                      //           ? "Manchester, England"
                                                      //           : "Leistershire, England",
                                                      //       textAlign: TextAlign.start,
                                                      //       style: TextStyle(
                                                      //           color: Colors.black54,
                                                      //           fontSize: 13,
                                                      //           fontFamily: 'Oswald',
                                                      //           fontWeight: FontWeight.w300),
                                                      //     )),
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
                                                            children: <Widget>[
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    // Icon(Icons.location_on,
                                                                    //     color: header,
                                                                    //     size: 14),
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
                                                                              FontWeight.w400),
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
                                                                children: <
                                                                    Widget>[
                                                                  Icon(
                                                                    Icons.star,
                                                                    color:
                                                                        header,
                                                                    size: 13,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color:
                                                                        header,
                                                                    size: 13,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color:
                                                                        header,
                                                                    size: 13,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
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
                                ),
                                itemCount: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Future<Null> _showPersonDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     margin: EdgeInsets.only(top: 0, left: 0),
                      //     child: Text(
                      //       "Choose Date",
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(
                      //           color: Colors.black54,
                      //           fontSize: 16,
                      //           fontFamily: 'Oswald',
                      //           fontWeight: FontWeight.w400),
                      //     )),
                      // Divider(color: Colors.black26),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                //width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 0, left: 0),
                                child: Text(
                                  "Number of rooms : ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w200),
                                )),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (rooms <= 0) {
                                          rooms = 0;
                                        } else {
                                          rooms--;
                                        }
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 0),
                                      child: Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "$rooms",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        rooms++;
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 3),
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 20, left: 0),
                                child: Text(
                                  "Adult : ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w200),
                                )),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (adult <= 0) {
                                          adult = 0;
                                        } else {
                                          adult--;
                                        }
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 0),
                                      child: Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "$adult",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        adult++;
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 3),
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 20, left: 0),
                                child: Text(
                                  "Children : ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w200),
                                )),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (children <= 0) {
                                          children = 0;
                                        } else {
                                          children--;
                                        }
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 0),
                                      child: Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "$children",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        children++;
                                      });
                                      Navigator.of(context).pop();
                                      _showPersonDialog();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(left: 3),
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.black26,
                                        size: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      (rooms == 0 || (adult + children == 0))
                          ? Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 20, left: 0),
                              child: Text(
                                error,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ))
                          : Container(),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                if (rooms == 0) {
                                  setState(() {
                                    error = "Please select number of rooms";
                                    Navigator.of(context).pop();
                                    _showPersonDialog();
                                  });
                                } else if (adult + children == 0) {
                                  setState(() {
                                    error = "Please select number of persons";
                                    Navigator.of(context).pop();
                                    _showPersonDialog();
                                  });
                                } else {
                                  setState(() {
                                    count1 = 1;
                                    roomInt = rooms;
                                    adultInt = adult;
                                    childrenInt = children;
                                    Navigator.of(context).pop();
                                  });
                                }
                              },
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(
                                      left: 0, right: 10, top: 20, bottom: 0),
                                  decoration: BoxDecoration(
                                      color: header,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Text(
                                    "Select",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'BebasNeue',
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(
                                      left: 10, right: 0, top: 20, bottom: 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 17,
                                      fontFamily: 'BebasNeue',
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        );
      },
    );
  }

  Future<Null> _showDateDialog() async {
    //Departure
    if (month == "Apr" || month == "Jun" || month == "Sep" || month == "Nov") {
      setState(() {
        dayCount1 = "30";
      });
    } else if (month == "Feb") {
      if ((yearInt % 4 == 0) &&
          ((yearInt % 100 != 0) || (yearInt % 400 == 0))) {
        setState(() {
          dayCount1 = "29";
        });
        if (day == "28") {
          setState(() {
            day = "01";
          });
        }
      } else {
        setState(() {
          dayCount1 = "28";
        });
        if (day == "29") {
          setState(() {
            day = "01";
          });
        }
      }
    } else {
      setState(() {
        dayCount1 = "31";
      });
    }

    //Return
    if (month1 == "Apr" ||
        month1 == "Jun" ||
        month1 == "Sep" ||
        month1 == "Nov") {
      setState(() {
        dayCount = "30";
      });
    } else if (month1 == "Feb") {
      if ((yearInt1 % 4 == 0) &&
          ((yearInt1 % 100 != 0) || (yearInt1 % 400 == 0))) {
        setState(() {
          dayCount = "29";
        });
        // if (day1 == "28") {
        //   setState(() {
        //     day1 = "01";
        //   });
        // }
      } else {
        setState(() {
          dayCount = "28";
        });
        if (day1 == "29") {
          setState(() {
            day1 = "01";
          });
        }
      }
    } else {
      setState(() {
        dayCount = "31";
      });
    }

    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     margin: EdgeInsets.only(top: 0, left: 0),
                    //     child: Text(
                    //       "Choose Date",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(
                    //           color: Colors.black54,
                    //           fontSize: 16,
                    //           fontFamily: 'Oswald',
                    //           fontWeight: FontWeight.w400),
                    //     )),
                    // Divider(color: Colors.black26),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 0, left: 0),
                        child: Text(
                          "Departure Date",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontFamily: 'Open Sans Condensed',
                              fontWeight: FontWeight.w400),
                        )),
                    Divider(color: Colors.black26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Month",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                    fontFamily: 'Open Sans Condensed',
                                    fontWeight: FontWeight.w300),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                  value: month,
                                  items: _dropDownMonthItems,
                                  onChanged: (String value) {
                                    setState(() {
                                      month = value;
                                      day = "01";
                                    });
                                    Navigator.of(context).pop();
                                    _showDateDialog();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Day",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                    fontFamily: 'Open Sans Condensed',
                                    fontWeight: FontWeight.w300),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                  value: day,
                                  hint: Text(day,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black26,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300)),
                                  items: dayCount1 == "31"
                                      ? _dropDownDayItems
                                      : dayCount1 == "30"
                                          ? _dropDownDayItems330
                                          : dayCount1 == "29"
                                              ? _dropDownDayItemsLeapp
                                              : _dropDownDayItemsFebb,
                                  onChanged: (String value) {
                                    setState(() {
                                      day = value;
                                    });
                                    Navigator.of(context).pop();
                                    _showDateDialog();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0, left: 0),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 0),
                                child: Text(
                                  "Year",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 11,
                                      fontFamily: 'Open Sans Condensed',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (yearInt <= yearCheck) {
                                            yearInt = yearCheck;
                                          } else {
                                            yearInt--;
                                            Navigator.of(context).pop();
                                            _showDateDialog();
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.chevron_left,
                                          color: yearInt == yearCheck
                                              ? Colors.black26
                                              : Colors.black54,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      child: Text(
                                        "$yearInt",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          yearInt++;
                                        });
                                        Navigator.of(context).pop();
                                        _showDateDialog();
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.only(left: 3),
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: Colors.black54,
                                          size: 25,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   height: 30,
                        //   child: VerticalDivider(color: Colors.black26,)),
                      ],
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 25, left: 0),
                        child: Text(
                          "Return Date",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontFamily: 'Open Sans Condensed',
                              fontWeight: FontWeight.w400),
                        )),
                    Divider(color: Colors.black26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Month",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                    fontFamily: 'Open Sans Condensed',
                                    fontWeight: FontWeight.w300),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                  value: month1,
                                  items: _dropDownMonthItems1,
                                  onChanged: (String value) {
                                    setState(() {
                                      month1 = value;
                                      day1 = "01";
                                      // _dropDownDayItems1 =
                                      //     getDropDowndayItems1();
                                      // day1 = _dropDownDayItems1[0].value;
                                    });
                                    Navigator.of(context).pop();
                                    _showDateDialog();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Day",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                    fontFamily: 'Open Sans Condensed',
                                    fontWeight: FontWeight.w300),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                  value: day1,
                                  hint: Text(day1,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black26,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300)),
                                  items: dayCount == "31"
                                      ? _dropDownDayItems1
                                      : dayCount == "30"
                                          ? _dropDownDayItems30
                                          : dayCount == "29"
                                              ? _dropDownDayItemsLeap
                                              : _dropDownDayItemsFeb,
                                  onChanged: (String value) {
                                    setState(() {
                                      day1 = value;
                                    });
                                    Navigator.of(context).pop();
                                    _showDateDialog();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0, left: 0),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 0),
                                child: Text(
                                  "Year",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 11,
                                      fontFamily: 'Open Sans Condensed',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (yearInt1 <= yearCheck1) {
                                            yearInt1 = yearCheck1;
                                          } else {
                                            yearInt1--;
                                            Navigator.of(context).pop();
                                            _showDateDialog();
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.chevron_left,
                                          color: yearInt1 == yearCheck1
                                              ? Colors.black26
                                              : Colors.black54,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      child: Text(
                                        "$yearInt1",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          yearInt1++;
                                        });
                                        Navigator.of(context).pop();
                                        _showDateDialog();
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.only(left: 3),
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: Colors.black54,
                                          size: 25,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   height: 30,
                        //   child: VerticalDivider(color: Colors.black26,)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                count = 1;
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 10, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 10, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
