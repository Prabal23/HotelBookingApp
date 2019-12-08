import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../main.dart';

class PrivacyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrivacyPageState();
  }
}

class PrivacyPageState extends State<PrivacyPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 20),
                    //alignment: Alignment.topLeft,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 15),
                          child: BackButton(),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                "Privacy Policy",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Oswald'),
                              )),
                        ),
                      ],
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
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  SingleChildScrollView(
                    child: Container(
                      child: new Column(
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "A Privacy Policy agreement is the agreement where you specify if you collect personal data from your users, what kind of personal data you collect and what you do with that data.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "This agreement is required by law if you collect personal data. Personal data is any kind of data or information that can be considered personal (identifies an individual) such as:",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 35, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Email address\nFirst and last name\nBilling and shipping address\nCredit card information",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "This marks the start of what we know now as a “Privacy Policy.” While the name “Privacy Policy” refers to the legal agreement, the concept of privacy and protecting user data is closely related.\n\nThis agreement can also be known under these names:",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 35, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Privacy Statement\nPrivacy Notice\nPrivacy Information\nPrivacy Page",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "PA Privacy Policy can be used for both your website and mobile app if it’s adapted to include the platforms your business operates on.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                          //   width: MediaQuery.of(context).size.width,
                          //   child: Row(
                          //     children: <Widget>[
                          //       Text(
                          //         "Give Feedback",
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //             color: header,
                          //             fontSize: 14,
                          //             fontFamily: 'Oswald',
                          //             fontWeight: FontWeight.w400),
                          //       ),
                          //       Container(
                          //           margin: EdgeInsets.only(top: 3),
                          //           child: Icon(Icons.chevron_right,
                          //               color: header, size: 18))
                          //     ],
                          //   ),
                          // ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  top: 30, left: 25, right: 25, bottom: 30),
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
                ],
              ),
            ),
          ),
        ));
  }
}
