import 'package:flutter/material.dart';
import 'package:roome/Cards/InsidePopularPlacecard/insidePopularPlacecard.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

import '../../main.dart';

class PopularPlacePage extends StatefulWidget {
  @override
  PopularPlacePageState createState() => PopularPlacePageState();
}

class PopularPlacePageState extends State<PopularPlacePage> {
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
                            "Popular Destinations",
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
                          "List of Destinations",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Oswald'),
                        ),
                        // Container(
                        //   child: Text(
                        //     "Clear All",
                        //     textAlign: TextAlign.start,
                        //     style: TextStyle(
                        //         color: header,
                        //         fontSize: 13,
                        //         fontFamily: 'Oswald',
                        //         fontWeight: FontWeight.w400),
                        //   ),
                        //),
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
                return InsidePopularPlacecard();
              }, childCount: 6),
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 1,
              //   childAspectRatio: (MediaQuery.of(context).size.width / 2) /
              //       (MediaQuery.of(context).size.height / 5.58),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
