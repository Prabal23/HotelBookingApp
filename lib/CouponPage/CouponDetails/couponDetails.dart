import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../../main.dart';

class CouponDetailsPage extends StatefulWidget {
  final String page;

  CouponDetailsPage({this.page});
  @override
  State<StatefulWidget> createState() {
    return CouponDetailsPageState();
  }
}

class CouponDetailsPageState extends State<CouponDetailsPage> {
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
                          "Voucher & Coupon Details",
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
                          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/coupons.jpg"),
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
                                          "15% discount on staying",
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
                                                        "Grand Sultan hotel is giving 15% discount for some lucky customers. This discount is available for all the services provided them. so don't miss the chance. Grab it now.",
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
                                              "Hotel name",
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
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 2),
                                      child: Text(
                                        "Grand Sultan Tea Resort and Golf",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10, left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Expiration Date",
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
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 2),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "Sep 5, 2019",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            widget.page == "2" ? " (" : "",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            widget.page == "2" ? "Expired" : "",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            widget.page == "2" ? ")" : "",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10, left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Coupon number",
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
                                                  "C_ROOME - 123456",
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
                                                widget.page == "2"
                                                    ? "Renew"
                                                    : "Claim & Save",
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
