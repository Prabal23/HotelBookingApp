import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/CountryPage/countryPage.dart';
import 'package:roome/MainScreens/CurrencyPage/currencyPage.dart';
import 'package:roome/MainScreens/FeedbackPage/feedbackPage.dart';
import 'package:roome/MainScreens/PrivacyPage/privacyPage.dart';
import 'package:roome/MainScreens/Terms&Con/terms&Con.dart';
import 'dart:io';

import '../../main.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {
  int page = 0;
  int notify = 0;
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
                      margin: EdgeInsets.only(top: 15),
                      child: BackButton(),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          "Settings",
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
                    child: new Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Notifications",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    notify++;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(Icons.notifications,
                                      color: notify % 2 == 0
                                          ? Colors.black38
                                          : header,
                                      size: 22),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CountryPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Country",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Bangladesh",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CurrencyPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Currency",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.attach_money,
                                    //   color: Colors.black54,
                                    //   size: 18,
                                    // ),
                                    Text(
                                      "BDT",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TnCPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Terms of service",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Privacy Policy",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedbackPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Give us feedback",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                    width: 0.15, color: Colors.black38))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
