import 'package:flutter/material.dart';
import 'package:roome/Cards/FavTripCard/favTripCard.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class FavTripPage extends StatefulWidget {
  @override
  _FavTripPageState createState() => _FavTripPageState();
}

class _FavTripPageState extends State<FavTripPage> {
  List favList = [
    {
      "image": "assets/images/h4.jpg",
      "name": "Paradise Hotel & Spa",
      "place": "Paris",
      "rating": 4.5,
      "price": 250,
    },
    {
      "image": "assets/images/h2.jpg",
      "name": "Queens Hotel",
      "place": "London",
      "rating": 4.0,
      "price": 245,
    },
    {
      "image": "assets/images/h3.jpg",
      "name": "Hotel Sunshine",
      "place": "Bangkok",
      "rating": 3.5,
      "price": 230,
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
            itemCount: favList.length,
            itemBuilder: (BuildContext context, int index) =>
                FavTripCard(favList[index]),
          ),
        ),
      ),
    );
  }
}
