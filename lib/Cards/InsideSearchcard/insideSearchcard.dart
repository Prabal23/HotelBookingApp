import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

import '../../main.dart';

class InsideSearchcard extends StatefulWidget {
  final searchList;

  InsideSearchcard(this.searchList);
  @override
  _InsideSearchcardState createState() => _InsideSearchcardState();
}

class _InsideSearchcardState extends State<InsideSearchcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HotelSearchPage(
                      "${widget.searchList['name']}",
                      "${widget.searchList['stDate']}",
                      "${widget.searchList['stMon']}",
                      "${widget.searchList['endDate']}",
                      "${widget.searchList['endMon']}",
                      widget.searchList['room'],
                      widget.searchList['adult'],
                      widget.searchList['children'],
                    )),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
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
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${widget.searchList['image']}"),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 5, left: 0, bottom: 0),
                            child: Text(
                              "${widget.searchList['name']}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 0),
                            child: Text(
                              "${widget.searchList['date']}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontFamily: 'Open Sans Condensed'),
                            )),
                        Container(
                            margin:
                                EdgeInsets.only(top: 0, left: 0, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${widget.searchList['person']}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13,
                                      fontFamily: 'Open Sans Condensed'),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(7),
                        margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "${widget.searchList['num']} Hotels",
                                style: TextStyle(
                                  color: header,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: header,
                                    size: 17,
                                  ))
                            ],
                          ),
                        )),
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
