import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class H1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return H1PageState();
  }
}

class H1PageState extends State<H1Page> {
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
                                "How do I cancel my room's reservation?",
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
                              "You can cancel a reservation at anytime before or during trip. To cancel room reservation the below steps can be followed -  ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "1) Find your hotel name\n2) Then Go to Settings\n3) Choose Reservation status and change it to cancel",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "We will refund your money if the trip hasn't started. Otherwise if you cancel trip while staying, the refund policy will be based on the day you stayed.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Give Feedback",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: header,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Icon(Icons.chevron_right,
                                        color: header, size: 18))
                              ],
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 30, left: 25, right: 25),
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
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Related articles",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 17,
                                        fontFamily: 'Oswald'),
                                  ),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "Can I change a reservation as a guest?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 14,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "How do I cancel a reservation request?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 14,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "What is the resolution center?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 14,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Icon(Icons.chevron_right,
                                    color: Colors.black26, size: 20)
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
        ));
  }
}
