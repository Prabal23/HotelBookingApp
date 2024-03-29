import 'package:flutter/material.dart';
import 'package:roome/Cards/RoomsCard/roomsCard.dart';
import 'package:roome/MainScreens/RoomDetailsPage/roomDetailsPage.dart';

import '../../main.dart';

class HotelRoomPage extends StatefulWidget {
  @override
  _HotelRoomPageState createState() => _HotelRoomPageState();
}

class _HotelRoomPageState extends State<HotelRoomPage> {
  List roomDetails = [
    {
      "image": "assets/images/premium.jpeg",
      "name": "Premium Room",
      "oldPrice": 245,
      "newPrice": 240.9,
      "discount": 18,
    },
    {
      "image": "assets/images/deluxe.jpg",
      "name": "Deluxe Room",
      "oldPrice": 230,
      "newPrice": 212.5,
      "discount": 15,
    },
    {
      "image": "assets/images/super.jpg",
      "name": "Hotel Sunshine",
      "oldPrice": 240,
      "newPrice": 0,
      "discount": 0,
    },
    {
      "image": "assets/images/suite.jpg",
      "name": "Hotel Moonlight",
      "oldPrice": 230,
      "newPrice": 0,
      "discount": 0,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Room category",
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
              return RoomsCard(roomDetails[index]);
            }, childCount: roomDetails.length),
          )
        ],
      ),
    );
  }
}
