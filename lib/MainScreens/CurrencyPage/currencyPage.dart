import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CurrencyPageState();
  }
}

class CurrencyPageState extends State<CurrencyPage> {
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
                          "Currency",
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
                          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Bangladesh Taka",
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
                              Text(
                                "American Dollar",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "USD",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
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
                              Text(
                                "Canadian Dollar",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "CAD",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
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
                              Text(
                                "British Euro",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "EURO",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
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
                              Text(
                                "Indian Rupees",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "RPS",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
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
