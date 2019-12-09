import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:roome/Cards/ReviewCard/reviewCard.dart';
import 'package:roome/MainScreens/WriteReviewPage/writeReviewPage.dart';

import '../../main.dart';

class HotelReviewPage extends StatefulWidget {
  @override
  _HotelReviewPageState createState() => _HotelReviewPageState();
}

class _HotelReviewPageState extends State<HotelReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
                alignment: Alignment.centerLeft,
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 5),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontSize: 30,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
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
                              Text(
                                "5,328",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 13,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 0),
                                          child: Text(
                                            "5*",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: LinearPercentIndicator(
                                              lineHeight: 5.0,
                                              percent: 0.95,
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor: back,
                                              progressColor: header,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 0),
                                          child: Text(
                                            "4*",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: LinearPercentIndicator(
                                              lineHeight: 5.0,
                                              percent: 0.15,
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor: back,
                                              progressColor: header,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 0),
                                          child: Text(
                                            "3*",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: LinearPercentIndicator(
                                              lineHeight: 5.0,
                                              percent: 0.40,
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor: back,
                                              progressColor: header,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 0),
                                          child: Text(
                                            "2*",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: LinearPercentIndicator(
                                              lineHeight: 5.0,
                                              percent: 0.08,
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor: back,
                                              progressColor: header,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 0),
                                          child: Text(
                                            "1*",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 2),
                                            child: LinearPercentIndicator(
                                              lineHeight: 5.0,
                                              percent: 0.05,
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor: back,
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 20, left: 0, right: 0),
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
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Reviews ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Oswald'),
                              ),
                              Text(
                                "(20)",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WriteReviewPage()));
                            },
                            child: Container(
                              child: Text(
                                "Write a review",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: header,
                                    fontSize: 13,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ReviewCard();
                },
                childCount: 6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
