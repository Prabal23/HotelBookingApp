import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../../main.dart';

class FeedbackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeedbackPageState();
  }
}

class FeedbackPageState extends State<FeedbackPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back,
        body: CustomScrollView(slivers: <Widget>[
          // SliverPadding(
          //   padding: EdgeInsets.only(left: 8, top: 10),
          //   sliver: SliverAppBar(
          //     backgroundColor: back,
          //     pinned: true,
          //     flexibleSpace: FlexibleSpaceBar(
          //       //centerTitle: true,
          //       title: Container(
          //           alignment: Alignment.centerLeft,
          //           margin: EdgeInsets.only(top: 37, left: 0),
          //           child: Text(
          //             "Give us feedback",
          //             textAlign: TextAlign.start,
          //             style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 20,
          //                 fontFamily: 'Oswald'),
          //           )),
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 25, top: 15),
              child: new Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 11, left: 0, right: 20),
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
                              "Give us feedback",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Oswald'),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Fill up the below form to give your feedback",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      )),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 20, left: 20),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          //border: Border.all(color: Colors.grey, width: 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.email,
                                  size: 19,
                                  color: header,
                                )),
                            Flexible(
                              child: TextField(
                                //controller: phoneController,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Oswald',
                                ),
                                decoration: InputDecoration(
                                  hintText: "Your Email",
                                  hintStyle: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w300),
                                  //labelStyle: TextStyle(color: Colors.white70),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 0, left: 20),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          //border: Border.all(color: Colors.grey, width: 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 5, top: 3),
                                child: Icon(
                                  Icons.info_outline,
                                  size: 19,
                                  color: header,
                                )),
                            Flexible(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 50),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: TextField(
                                    maxLines: null,
                                    //controller: phoneController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Subject",
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                      //labelStyle: TextStyle(color: Colors.white70),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 10.0, 0.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 0, left: 20),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          //border: Border.all(color: Colors.grey, width: 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 5, top: 3),
                                child: Icon(
                                  Icons.description,
                                  size: 19,
                                  color: header,
                                )),
                            Flexible(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    maxHeight: 200.0, minHeight: 100.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: TextField(
                                    maxLines: null,
                                    //controller: phoneController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Description",
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                      //labelStyle: TextStyle(color: Colors.white70),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 10.0, 0.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 20, right: 0, bottom: 20),
                      decoration: BoxDecoration(
                          color: header,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'BebasNeue',
                        ),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          )
        ]));
  }
}
