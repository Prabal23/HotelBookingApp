import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../../../main.dart';

class FilterPagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterPagePageState();
  }
}

class FilterPagePageState extends State<FilterPagePage> {
  TextEditingController srch = new TextEditingController();
  int value = 0,
      value1 = 0,
      brkfst = 0,
      parking = 0,
      pool = 1,
      pet = 0,
      wifi = 0;
  int allInt = 0, hotelInt = 0, resortInt = 0;
  double _itemsliderValue1 = 0.0;
  double _itemsliderValue2 = 1.0;
  bool all = true, hotel = false, resort = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: SafeArea(
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
                              "Filter",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Oswald'),
                            )),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20, left: 0, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                child: Text(
                                  "Price (One night)",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Expanded(
                                child: Slider(
                                  activeColor: header,
                                  min: 0.0,
                                  max: 50000.0,
                                  divisions: 1000,
                                  onChanged: (newRating) {
                                    setState(() {
                                      _itemsliderValue1 = newRating;
                                      value = _itemsliderValue1.toInt();
                                      //print("$_itemsliderValue1") ;
                                    });
                                  },
                                  value: _itemsliderValue1,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.attach_money,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  Text(
                                    "$value",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black12,
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              border: Border.all(
                                  width: 0.15, color: Colors.black12))),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Popular filters",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20, right: 25),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  brkfst++;
                                });
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: brkfst % 2 == 0
                                                ? Colors.white
                                                : header.withOpacity(0.7),
                                            border: Border.all(
                                                color: brkfst % 2 == 0
                                                    ? Colors.grey
                                                    : header.withOpacity(0.7),
                                                width: 0.3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.done,
                                          color: brkfst % 2 == 0
                                              ? Colors.grey
                                              : Colors.white,
                                          size: 14,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Free Breakfast",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  parking++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 34),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: parking % 2 == 0
                                                ? Colors.white
                                                : header.withOpacity(0.7),
                                            border: Border.all(
                                                color: parking % 2 == 0
                                                    ? Colors.grey
                                                    : header.withOpacity(0.7),
                                                width: 0.3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.done,
                                          color: parking % 2 == 0
                                              ? Colors.grey
                                              : Colors.white,
                                          size: 14,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Free Parking",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
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
                        margin: EdgeInsets.only(left: 25, top: 20, right: 25),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pool++;
                                });
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: pool % 2 == 0
                                                ? Colors.white
                                                : header.withOpacity(0.7),
                                            border: Border.all(
                                                color: pool % 2 == 0
                                                    ? Colors.grey
                                                    : header.withOpacity(0.7),
                                                width: 0.3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.done,
                                          color: pool % 2 == 0
                                              ? Colors.grey
                                              : Colors.white,
                                          size: 14,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Swimming Pool",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pet++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: pet % 2 == 0
                                                ? Colors.white
                                                : header.withOpacity(0.7),
                                            border: Border.all(
                                                color: pet % 2 == 0
                                                    ? Colors.grey
                                                    : header.withOpacity(0.7),
                                                width: 0.3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.done,
                                          color: pet % 2 == 0
                                              ? Colors.grey
                                              : Colors.white,
                                          size: 14,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Pet friendly",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
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
                        margin: EdgeInsets.only(left: 25, top: 20, right: 25),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  wifi++;
                                });
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: wifi % 2 == 0
                                                ? Colors.white
                                                : header.withOpacity(0.7),
                                            border: Border.all(
                                                color: wifi % 2 == 0
                                                    ? Colors.grey
                                                    : header.withOpacity(0.7),
                                                width: 0.3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Icon(
                                          Icons.done,
                                          color: wifi % 2 == 0
                                              ? Colors.grey
                                              : Colors.white,
                                          size: 14,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Free Wi-fi",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
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
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black12,
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              border: Border.all(
                                  width: 0.15, color: Colors.black12))),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 10, left: 0, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                child: Text(
                                  "Distance",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Expanded(
                                child: Slider(
                                  activeColor: header,
                                  min: 1.0,
                                  max: 5.0,
                                  onChanged: (newRating1) {
                                    setState(() {
                                      _itemsliderValue2 = newRating1;
                                      value1 = _itemsliderValue2.toInt();
                                      //print("$_itemsliderValue1") ;
                                    });
                                  },
                                  value: _itemsliderValue2,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "$value1 km",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black12,
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              border: Border.all(
                                  width: 0.15, color: Colors.black12))),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Types of Accomodation",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "All",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Switch(
                              activeColor: Colors.white,
                              activeTrackColor: header.withOpacity(0.6),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey.withOpacity(0.4),
                              onChanged: (bool value) {
                                setState(() {
                                  allInt++;
                                  if (allInt % 2 == 0) {
                                    all = false;
                                  } else {
                                    all = true;
                                  }
                                });
                              },
                              value: all,
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black12,
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              border: Border.all(
                                  width: 0.15, color: Colors.black12))),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Hotel",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Switch(
                              activeColor: Colors.white,
                              activeTrackColor: header.withOpacity(0.6),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey.withOpacity(0.4),
                              onChanged: (bool value) {
                                setState(() {
                                  hotelInt++;
                                  if (hotelInt % 2 == 0) {
                                    hotel = false;
                                  } else {
                                    hotel = true;
                                  }
                                });
                              },
                              value: hotel,
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black12,
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              border: Border.all(
                                  width: 0.15, color: Colors.black12))),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Resort",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Switch(
                              activeColor: Colors.white,
                              activeTrackColor: header.withOpacity(0.6),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey.withOpacity(0.4),
                              onChanged: (bool value) {
                                setState(() {
                                  resortInt++;
                                  if (resortInt % 2 == 0) {
                                    resort = false;
                                  } else {
                                    resort = true;
                                  }
                                });
                              },
                              value: resort,
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: header,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'BebasNeue',
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
