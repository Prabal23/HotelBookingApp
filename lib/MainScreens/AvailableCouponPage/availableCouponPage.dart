import 'package:flutter/material.dart';
import 'package:roome/Cards/AvailableCouponCard/availableCouponCard.dart';
import 'package:roome/MainScreens/CouponDetails/couponDetails.dart';

import '../../main.dart';

class AvailableCouponPage extends StatefulWidget {
  @override
  _AvailableCouponPageState createState() => _AvailableCouponPageState();
}

class _AvailableCouponPageState extends State<AvailableCouponPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
                alignment: Alignment.centerLeft,
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 11),
                child: Row(
                  children: <Widget>[
                    Text(
                      "2",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Oswald'),
                    ),
                    Text(
                      " Offers",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Oswald'),
                    ),
                  ],
                )),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return AvailableCouponCard();
            }, childCount: 2),
          )
        ],
      ),
    );
  }
}
