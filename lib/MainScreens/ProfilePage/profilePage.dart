import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/ChangePassPage/changePassPage.dart';
import 'package:roome/MainScreens/CouponPage/couponPage.dart';
import 'package:roome/MainScreens/HelpCenterPage/helpCenterPage.dart';
import 'package:roome/MainScreens/InviteFriendsPage/inviteFriendsPage.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';
import 'package:roome/MainScreens/PaymentPage/paymentPage.dart';
import 'dart:io';

import 'package:roome/MainScreens/ProfileEditPage/profileEdit.dart';
import 'package:roome/MainScreens/SettingsPage/settingPage.dart';

import '../../main.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: new Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileEditPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(top: 0, left: 0),
                                      child: Text(
                                        "John Smith",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontFamily: 'Oswald'),
                                      )),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(top: 0, left: 0),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "View and edit profile",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15,
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Icon(
                                              Icons.chevron_right,
                                              color: Colors.black26,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(right: 0, top: 0),
                              padding: EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              decoration: new BoxDecoration(
                                color: Colors.grey[200], // border color
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black.withOpacity(.2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Change Password",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.lock, color: Colors.black26, size: 18)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InviteFriendsPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Invite Friends",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 1, bottom: 1, right: 5, left: 5),
                                margin: EdgeInsets.only(right: 0, left: 3),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  "3",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 2),
                                      child: Text(
                                        "40%",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 3),
                                      child: Text(
                                        "disc",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 11,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, right: 5, top: 3),
                                  padding: EdgeInsets.all(1.0),
                                  child: CircleAvatar(
                                    radius: 1.0,
                                    backgroundColor: header,
                                  ),
                                  decoration: new BoxDecoration(
                                    color: header, // border color
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 2),
                                      child: Text(
                                        "20",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 3),
                                      child: Text(
                                        "reg",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 11,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CouponPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Voucher & Coupons",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 1, bottom: 1, right: 5, left: 5),
                                margin: EdgeInsets.only(right: 0, left: 3),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  "2",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.local_offer,
                              color: Colors.black26, size: 18)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpCenterPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Help Center",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.info, color: Colors.black26, size: 18)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Payments",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.payment, color: Colors.black26, size: 18)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Settings",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.settings, color: Colors.black26, size: 18)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  GestureDetector(
                    onTap: (){
                      _showLogoutDialog();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Logout",
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
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                ],
              ),
            ),
          ),
        ));
  }

  Future<Null> _showLogoutDialog() async {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Do you want to logout?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 5, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "Yes",
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
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 5, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black54, width: 0.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    color: Colors.black54,
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
