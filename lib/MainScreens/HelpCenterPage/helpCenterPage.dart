import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/H1/h1.dart';

import '../../main.dart';
class HelpCenterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HelpCenterPageState();
  }
}

class HelpCenterPageState extends State<HelpCenterPage> {
  int page = 0;
  TextEditingController srch = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 15),
                            child: BackButton(
                              color: Colors.black,
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                "How can we help?",
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
                      margin: EdgeInsets.only(bottom: 0, top: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10),
                                margin:
                                    EdgeInsets.only(left: 20, right: 0, top: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // border: Border.all(
                                  //     color: Colors.grey, width: 0.3),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(.2),
                                      //offset: Offset(6.0, 7.0),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Icon(
                                          Icons.search,
                                          size: 19,
                                          color: header,
                                        )),
                                    Flexible(
                                      child: TextField(
                                        controller: srch,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Oswald',
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "Search help articles",
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
                                  ],
                                )),
                          ),
                          Container(
                                  padding: EdgeInsets.all(13),
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                      color: header,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(.2),
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
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: new Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Paying for a reservation",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 17,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => H1Page()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "How do I cancel my room's reservation?",
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
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "What methods of payment does Roome accept?",
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
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "When am I charged for a reservation?",
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
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "How do I edit/remove a payment method?",
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
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Trust and Safety",
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
                                  "I am a guest. What are some safety tips I can follow?",
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
