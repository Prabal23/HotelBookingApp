import 'package:flutter/material.dart';
import 'package:roome/Cards/InsideSearchcard/insideSearchcard.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

import '../../main.dart';

class RecentSearchPage extends StatefulWidget {
  @override
  _RecentSearchPageState createState() => _RecentSearchPageState();
}

class _RecentSearchPageState extends State<RecentSearchPage> {
  List searchList = [
    {
      "image": "assets/images/bd.jpg",
      "name": "Bangladesh",
      "date": "Sep 1 - Sep 5",
      "person": "1 Room - 2 Persons",
      "num": 2,
      "stMon": "Sep",
      "endMon": "Sep",
      "stDate": "1",
      "endDate": "5",
      "room": 1,
      "adult": 2,
      "children": 0,
    },
    {
      "image": "assets/images/l2.jpg",
      "name": "London",
      "date": "Sep 10 - Sep 15",
      "person": "2 Rooms - 3 Persons",
      "num": 3,
      "stMon": "Sep",
      "endMon": "Sep",
      "stDate": "10",
      "endDate": "15",
      "room": 2,
      "adult": 2,
      "children": 1,
    },
    {
      "image": "assets/images/thailand.jpg",
      "name": "Bangkok",
      "date": "Sep 25 - Sep 30",
      "person": "2 Rooms - 2 Persons",
      "num": 4,
      "stMon": "Sep",
      "endMon": "Sep",
      "stDate": "25",
      "endDate": "30",
      "room": 2,
      "adult": 2,
      "children": 0,
    },
    {
      "image": "assets/images/japan.jpg",
      "name": "Japan",
      "date": "Oct 5 - Oct 10",
      "person": "1 Room - 2 Persons",
      "num": 2,
      "stMon": "Oct",
      "endMon": "Oct",
      "stDate": "5",
      "endDate": "10",
      "room": 1,
      "adult": 2,
      "children": 0,
    },
    {
      "image": "assets/images/capetown.jpg",
      "name": "Capetown",
      "date": "Oct 15 - Oct 20",
      "person": "2 Rooms - 4 Persons",
      "num": 3,
      "stMon": "Oct",
      "endMon": "Oct",
      "stDate": "15",
      "endDate": "20",
      "room": 2,
      "adult": 2,
      "children": 2,
    },
    {
      "image": "assets/images/russia.jpg",
      "name": "Russia",
      "date": "Oct 25 - Oct 31",
      "person": "2 Rooms - 5 Persons",
      "num": 4,
      "stMon": "Oct",
      "endMon": "Oct",
      "stDate": "25",
      "endDate": "31",
      "room": 2,
      "adult": 2,
      "children": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 15),
                        child: BackButton(),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            "Recent Searches",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Oswald'),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20, right: 0, top: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.2),
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              //border: Border.all(color: Colors.grey, width: 0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.search,
                                      size: 19,
                                      color: header,
                                    )),
                                Flexible(
                                  child: TextField(
                                    //controller: phoneController,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Where are you going next?",
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                      //labelStyle: TextStyle(color: Colors.white70),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 10.0, 0.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(
                              left: 10, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: header,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black.withOpacity(.2),
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Icon(Icons.search,
                              color: Colors.white, size: 20)),
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Search List",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Oswald'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              searchList = [];
                            });
                          },
                          child: Container(
                            child: Text(
                              "Clear All",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: header,
                                  fontSize: 13,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
            sliver: SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return InsideSearchcard(searchList[index]);
              }, childCount: searchList.length),
            ),
          )
        ],
      ),
    );
  }
}
