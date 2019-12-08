import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

class HomeSearchCard extends StatefulWidget {
  @override
  _HomeSearchCardState createState() => _HomeSearchCardState();
}

class _HomeSearchCardState extends State<HomeSearchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HotelSearchPage()),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(.2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 0),
                  height: 75,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bd.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      color: Colors.white,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: null),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 5, left: 0, bottom: 0),
                            child: Text(
                              "Bangladesh",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 0),
                            child: Text(
                              "Sep 10 - Sep 14",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontFamily: 'Open Sans Condensed'),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 0, bottom: 5),
                            child: Text(
                              "1 Room - 2 Adults",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 11,
                                  fontFamily: 'Open Sans Condensed'),
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
