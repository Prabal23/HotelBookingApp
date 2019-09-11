import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../main.dart';

class InviteFriendsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InviteFriendsPageState();
  }
}

class InviteFriendsPageState extends State<InviteFriendsPage> {
  int page = 0;
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
                          "Invite Friends",
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
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                          child: Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/refer.jpg"),
                                  //fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: null,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 20, right: 5, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 0, bottom: 0),
                                        child: Text(
                                          "Invite your friends and get discount",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w400),
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                //width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 2, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 10, left: 0, right: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Text(
                                                        "Get upto 40% discount on hotel booking when your friend uses your invitation code while registration on this app. Only new devices with new invitation code will be considered as a new registration.",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontSize: 14,
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
                                          ],
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(top: 10, left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Your invitation code",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              padding: EdgeInsets.all(15),
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 10,
                                                  bottom: 0),
                                              decoration: BoxDecoration(
                                                  color: back,
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 0.2),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              child: Container(
                                                margin: EdgeInsets.only(top: 5),
                                                child: Text(
                                                  "ROOME - 123456",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(15),
                                            margin: EdgeInsets.only(
                                                left: 0,
                                                right: 15,
                                                top: 10,
                                                bottom: 0),
                                            decoration: BoxDecoration(
                                                color: header,
                                                border: Border.all(
                                                    color: header, width: 0.2),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15))),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Copy",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'BebasNeue',
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 0, left: 0, right: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 15),
                                                child: Icon(
                                                  Icons.group,
                                                  color: header,
                                                  size: 20,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 15, left: 5),
                                                child: Text(
                                                  "20",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Oswald',
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 15, left: 2),
                                                child: Text(
                                                  "people registered",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 11,
                                                      fontFamily: 'Oswald',
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 15),
                                                child: Icon(
                                                  Icons.local_offer,
                                                  color: header,
                                                  size: 15,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 15, left: 5),
                                                child: Text(
                                                  "40%",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Oswald',
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 15, left: 2),
                                                child: Text(
                                                  "discount",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 11,
                                                      fontFamily: 'Oswald',
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(
                                            top: 20, left: 0, right: 15),
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
                                      margin: EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Discount Conditions",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10,
                                          left: 0,
                                          right: 25,
                                          bottom: 20),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "1) 5 registrations - 10%\n2) 10 registrations - 20%\n3) 15 registrations - 30%\n4) 20 registrations - 40%",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
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
            ],
          ),
        ));
  }
}
