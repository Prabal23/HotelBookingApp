import 'package:flutter/material.dart';
import 'package:roome/Cards/UsedCouponCard/usedCouponCard.dart';
import 'package:roome/MainScreens/CouponDetails/couponDetails.dart';

import '../../main.dart';

class UsedCouponPage extends StatefulWidget {
  @override
  _UsedCouponPageState createState() => _UsedCouponPageState();
}

class _UsedCouponPageState extends State<UsedCouponPage> {
  List usedfList = [
    {
      "disc": "35",
      "ocassion": "Holiday",
      "hotel": "Paradise Hotel & Spa",
      "date": "Sep 23, 2019",
      "code": "C_Roome - 2019",
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
                      "${usedfList.length}",
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
              return UsedCouponCard(usedfList[index]);
            }, childCount: usedfList.length),
          )
        ],
      ),
    );
  }
}
