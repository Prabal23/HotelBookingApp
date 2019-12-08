import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/AvailableCouponPage/availableCouponPage.dart';
import 'package:roome/MainScreens/CouponDetails/couponDetails.dart';
import 'package:roome/MainScreens/UsedCouponPage/usedCouponPage.dart';

import '../../main.dart';

class CouponPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CouponPageState();
  }
}

class CouponPageState extends State<CouponPage> {
  int page = 0, bookmark = 0;
  String des = "";
  String firstHalf;
  String secondHalf;
  bool flag = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 2,
          child: SafeArea(
            child: new Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0, left: 5, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 15),
                            child: BackButton(),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "Credits & Coupons",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Oswald'),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                new Container(
                  //constraints: BoxConstraints(maxHeight: 150.0),
                  child: new Material(
                    //color: header,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          color: back,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          //border: Border.all(color: sub_white, width: 0.3),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: new TabBar(
                        labelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        tabs: [
                          new Tab(
                            text: "Available",
                          ),
                          new Tab(
                            text: "Used",
                          ),
                        ],
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Colors.black45,
                        unselectedLabelStyle: TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        labelColor: header,
                        //labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new TabBarView(
                    children: [
                      AvailableCouponPage(),
                      UsedCouponPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
