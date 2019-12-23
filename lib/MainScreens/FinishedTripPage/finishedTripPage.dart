import 'package:flutter/material.dart';
import 'package:roome/Cards/FinishedTripCard/finishedTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class FinishedTripPage extends StatefulWidget {
  @override
  _FinishedTripPageState createState() => _FinishedTripPageState();
}

class _FinishedTripPageState extends State<FinishedTripPage> {
  List finished = [
    {
      "image": "assets/images/h1.jpg",
      "name": "Hotel Sunshine",
      "place": "Bangkok",
      "rating": 3.5,
      "price": 230,
      "date": "Jun 15 - Jun 20",
      "person": "2 Rooms - 3 Persons",
    },
    {
      "image": "assets/images/h4.jpg",
      "name": "Hotel Moonlight",
      "place": "Russia",
      "rating": 3.0,
      "price": 220,
      "date": "Jul 25 - Jul 31",
      "person": "1 Room - 1 Person",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: finished.length,
            itemBuilder: (BuildContext context, int index) =>
                FinishedTripCard(finished[index]),
          ),
        ),
      ),
    );
  }
}
