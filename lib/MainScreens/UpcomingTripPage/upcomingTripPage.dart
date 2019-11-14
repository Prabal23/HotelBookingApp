import 'package:flutter/material.dart';
import 'package:roome/Cards/UpcomingTripCard/upcomingTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class UpcomingTripPage extends StatefulWidget {
  @override
  _UpcomingTripPageState createState() => _UpcomingTripPageState();
}

class _UpcomingTripPageState extends State<UpcomingTripPage> {
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
            itemBuilder: (BuildContext context, int index) => UpcomingTripCard(),
          ),
        ),
      ),
    );
  }
}
