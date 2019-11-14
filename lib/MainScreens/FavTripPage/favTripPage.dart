import 'package:flutter/material.dart';
import 'package:roome/Cards/FavTripCard/favTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class FavTripPage extends StatefulWidget {
  @override
  _FavTripPageState createState() => _FavTripPageState();
}

class _FavTripPageState extends State<FavTripPage> {
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
            itemBuilder: (BuildContext context, int index) => FavTripCard(),
          ),
        ),
      ),
    );
  }
}
