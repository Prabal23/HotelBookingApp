import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CountryPageState();
  }
}

class CountryPageState extends State<CountryPage> {
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
                          "Country",
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
                                "Bangladesh",
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
                                "America",
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
                                "Canada",
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
                                "India",
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
