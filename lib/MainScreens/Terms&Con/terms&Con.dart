import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../main.dart';

class TnCPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TnCPageState();
  }
}

class TnCPageState extends State<TnCPage> {
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
                                "Terms of service",
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
                          border: Border.all(width: 0.15, color: Colors.black38))),
                  SingleChildScrollView(
                    child: Container(
                      child: new Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Terms of service has two synonyms, including Terms and Conditions and Terms of Use. This is a phrase that includes a set of rules that must be followed by a user, so that he on she can get and use a service or a product.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Although the terms of service page might be the most boring place on your site, you still need to have it. On this page, your visitors can quickly learn the rules for using the website. They will know what's expected of them and what they can expect from you.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "There are no real legal requirements for an outline the terms of service page, but there are a lot of benefits to getting out of one. Both consumers/visitors and the business will get various benefits with the greatest focus on safety.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Not only will you be able to protect your business from any lawsuits made by visitors who harmed themselves in some way, but a business can also protect all the original content located on its website and claim all the rights for it.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "For example, when e-commerce businesses are facing legal lawsuits in court, the court always looks at their site and looks for the terms of service page, so that they can decide what the contractual terms were during the moment when the two parties interacted. A lot of businesses keep these potential suits in mind when they are creating a terms of service page.",
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
                              margin: EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
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
