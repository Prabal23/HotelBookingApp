import 'package:flutter/material.dart';
import 'package:roome/Cards/FinishedTripCard/finishedTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class FinishedTripPage extends StatefulWidget {
  @override
  _FinishedTripPageState createState() => _FinishedTripPageState();
}

class _FinishedTripPageState extends State<FinishedTripPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) => FinishedTripCard(),
          ),
        ),
      ),
    );
  }
}
