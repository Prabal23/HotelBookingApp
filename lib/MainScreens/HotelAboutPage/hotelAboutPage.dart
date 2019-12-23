import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../main.dart';

class HotelAboutPage extends StatefulWidget {
  @override
  _HotelAboutPageState createState() => _HotelAboutPageState();
}

class _HotelAboutPageState extends State<HotelAboutPage> {
  String des = "";
  String firstHalf;
  String secondHalf;
  bool flag = true;

  @override
  void initState() {
    des =
        "This hotel is located in the city center, surrounded by the well-known scenic spots like Tiananmen Square, Forbidden City and the Temple of Heaven. It has 300 rooms equipped with complete facilities and functions. The Old House 1918 Café is located on the first floor of the auxiliary building and from the top floor guests can have one of the best views of Beijing’s old city.";
    if (des.length > 150) {
      firstHalf = des.substring(0, 150);
      secondHalf = des.substring(150, des.length);
    } else {
      firstHalf = des;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/h1.jpg"),
                          fit: BoxFit.cover,
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
                                margin:
                                    EdgeInsets.only(top: 5, left: 0, bottom: 0),
                                child: Text(
                                  "Paradise Hotel & Spa",
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
                                margin: EdgeInsets.only(top: 0, left: 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                                "Paris",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.attach_money,
                                              color: Colors.black87, size: 14),
                                          Text(
                                            "250",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 3, left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Icon(
                                            Icons.phone,
                                            color: header,
                                            size: 15,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 3),
                                          child: Text(
                                            "+88 01720-848705",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w200),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Container(),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "/per night",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 13,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                    top: 20, left: 0, right: 15),
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
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "Description",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    flag = !flag;
                                  });
                                },
                                child: Container(
                                  child: secondHalf == ""
                                      ? new Text(firstHalf,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 13,
                                              fontFamily: "Oswald",
                                              fontWeight: FontWeight.w300))
                                      : RichText(
                                          textAlign: TextAlign.justify,
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: flag
                                                      ? firstHalf + "..."
                                                      : firstHalf + secondHalf,
                                                  style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.7),
                                                      fontSize: 13,
                                                      fontFamily: "Oswald",
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              TextSpan(
                                                  text:
                                                      flag ? " Read more" : "",
                                                  style: TextStyle(
                                                      color: header,
                                                      fontSize: 13,
                                                      fontFamily: "Oswald",
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              // can add more TextSpans here...
                                            ],
                                          ),
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  EdgeInsets.only(top: 30, left: 0, right: 0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: header,
                                        fontSize: 30,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Overall Rating",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 13,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: header,
                                                size: 13,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: header,
                                                size: 13,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: header,
                                                size: 13,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: header,
                                                size: 13,
                                              ),
                                              Icon(
                                                Icons.star_half,
                                                color: header,
                                                size: 13,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "Room",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 13,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 22),
                                      child: LinearPercentIndicator(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        lineHeight: 5.0,
                                        percent: 0.95,
                                        // center: Text(
                                        //   "50.0%",
                                        //   style:
                                        //       new TextStyle(fontSize: 12.0),
                                        // ),
                                        // trailing: Text(
                                        //   "95%",
                                        //   textAlign: TextAlign.start,
                                        //   style: TextStyle(
                                        //       color: Colors.black54,
                                        //       fontSize: 13,
                                        //       fontFamily: 'Oswald',
                                        //       fontWeight: FontWeight.w300),
                                        // ),
                                        linearStrokeCap:
                                            LinearStrokeCap.roundAll,
                                        backgroundColor: Colors.white,
                                        progressColor: header,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "Service",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 13,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 15),
                                      child: LinearPercentIndicator(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        lineHeight: 5.0,
                                        percent: 0.80,
                                        // center: Text(
                                        //   "50.0%",
                                        //   style:
                                        //       new TextStyle(fontSize: 12.0),
                                        // ),
                                        // trailing: Text(
                                        //   "95%",
                                        //   textAlign: TextAlign.start,
                                        //   style: TextStyle(
                                        //       color: Colors.black54,
                                        //       fontSize: 13,
                                        //       fontFamily: 'Oswald',
                                        //       fontWeight: FontWeight.w300),
                                        // ),
                                        linearStrokeCap:
                                            LinearStrokeCap.roundAll,
                                        backgroundColor: Colors.white,
                                        progressColor: header,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "Location",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 13,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: LinearPercentIndicator(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        lineHeight: 5.0,
                                        percent: 0.85,
                                        // center: Text(
                                        //   "50.0%",
                                        //   style:
                                        //       new TextStyle(fontSize: 12.0),
                                        // ),
                                        // trailing: Text(
                                        //   "95%",
                                        //   textAlign: TextAlign.start,
                                        //   style: TextStyle(
                                        //       color: Colors.black54,
                                        //       fontSize: 13,
                                        //       fontFamily: 'Oswald',
                                        //       fontWeight: FontWeight.w300),
                                        // ),
                                        linearStrokeCap:
                                            LinearStrokeCap.roundAll,
                                        backgroundColor: Colors.white,
                                        progressColor: header,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "Food",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 13,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 27),
                                      child: LinearPercentIndicator(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        lineHeight: 5.0,
                                        percent: 0.70,
                                        // center: Text(
                                        //   "50.0%",
                                        //   style:
                                        //       new TextStyle(fontSize: 12.0),
                                        // ),
                                        // trailing: Text(
                                        //   "95%",
                                        //   textAlign: TextAlign.start,
                                        //   style: TextStyle(
                                        //       color: Colors.black54,
                                        //       fontSize: 13,
                                        //       fontFamily: 'Oswald',
                                        //       fontWeight: FontWeight.w300),
                                        // ),
                                        linearStrokeCap:
                                            LinearStrokeCap.roundAll,
                                        backgroundColor: Colors.white,
                                        progressColor: header,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "Price",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 13,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 25),
                                      child: LinearPercentIndicator(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        lineHeight: 5.0,
                                        percent: 0.78,
                                        // center: Text(
                                        //   "50.0%",
                                        //   style:
                                        //       new TextStyle(fontSize: 12.0),
                                        // ),
                                        // trailing: Text(
                                        //   "95%",
                                        //   textAlign: TextAlign.start,
                                        //   style: TextStyle(
                                        //       color: Colors.black54,
                                        //       fontSize: 13,
                                        //       fontFamily: 'Oswald',
                                        //       fontWeight: FontWeight.w300),
                                        // ),
                                        linearStrokeCap:
                                            LinearStrokeCap.roundAll,
                                        backgroundColor: Colors.white,
                                        progressColor: header,
                                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
