import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

class HomeSearchCard extends StatefulWidget {
  final searchImages;

  HomeSearchCard(this.searchImages);
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
            MaterialPageRoute(
                builder: (context) => HotelSearchPage(
                    "${widget.searchImages['name']}", "${widget.searchImages['stDate']}",
                      "${widget.searchImages['stMon']}",
                      "${widget.searchImages['endDate']}",
                      "${widget.searchImages['endMon']}",
                      widget.searchImages['room'],
                      widget.searchImages['adult'],
                      widget.searchImages['children'],)),
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
                        image: AssetImage("${widget.searchImages['image']}"),
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
                              "${widget.searchImages['name']}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 0),
                            child: Text(
                              "${widget.searchImages['date']}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontFamily: 'Open Sans Condensed'),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 0, bottom: 5),
                            child: Text(
                              "${widget.searchImages['person']}",
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
