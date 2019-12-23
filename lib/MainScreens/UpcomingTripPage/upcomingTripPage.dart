import 'package:flutter/material.dart';
import 'package:roome/Cards/UpcomingTripCard/upcomingTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class UpcomingTripPage extends StatefulWidget {
  @override
  _UpcomingTripPageState createState() => _UpcomingTripPageState();
}

class _UpcomingTripPageState extends State<UpcomingTripPage> {
  List upcoming = [
    {
      "image": "assets/images/h1.jpg",
      "name": "Paradise Hotel & Spa",
      "place": "Paris",
      "rating": 4.5,
      "price": 250,
      "date": "Sep 1 - Sep 5",
      "person": "1 Room - 2 Persons",
    },
    {
      "image": "assets/images/h2.jpg",
      "name": "Queens Hotel",
      "place": "London",
      "rating": 4.0,
      "price": 245,
      "date": "Sep 15 - Sep 20",
      "person": "2 Rooms - 4 Persons",
    },
    {
      "image": "assets/images/h3.jpg",
      "name": "Hotel Sunshine",
      "place": "Bangkok",
      "rating": 3.5,
      "price": 230,
      "date": "Oct 15 - Oct 20",
      "person": "2 Rooms - 3 Persons",
    },
    {
      "image": "assets/images/h4.jpg",
      "name": "Hotel Moonlight",
      "place": "Russia",
      "rating": 3.0,
      "price": 220,
      "date": "Oct 25 - Oct 31",
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
            itemCount: upcoming.length,
            itemBuilder: (BuildContext context, int index) =>
                UpcomingTripCard(upcoming[index]),
          ),
        ),
      ),
    );
  }
}
