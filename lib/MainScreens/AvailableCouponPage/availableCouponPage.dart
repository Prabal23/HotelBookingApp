import 'package:flutter/material.dart';
import 'package:roome/Cards/AvailableCouponCard/availableCouponCard.dart';
import 'package:roome/MainScreens/CouponDetails/couponDetails.dart';

import '../../main.dart';

class AvailableCouponPage extends StatefulWidget {
  @override
  _AvailableCouponPageState createState() => _AvailableCouponPageState();
}

class _AvailableCouponPageState extends State<AvailableCouponPage> {
  List availList = [
    {
      "disc": "20",
      "ocassion": "Christmas",
      "hotel": "Queens Hotel",
      "date": "Oct 3, 2019",
      "code": "C_Christmas - 2019",
    },
    {
      "disc": "25",
      "ocassion": "New Year",
      "hotel": "Hotel Moonlight",
      "date": "Jan 23, 2019",
      "code": "C_NewYear - 2020",
    },
  ];

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
                      "${availList.length}",
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
              return AvailableCouponCard(availList[index]);
            }, childCount: availList.length),
          )
        ],
      ),
    );
  }
}
