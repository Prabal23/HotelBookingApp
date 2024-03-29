import 'package:flutter/material.dart';
import 'package:roome/MainScreens/RoomDetailsPage/roomDetailsPage.dart';

import '../../main.dart';

class RoomsCard extends StatefulWidget {
  final roomDetails;
  RoomsCard(this.roomDetails);
  @override
  _RoomsCardState createState() => _RoomsCardState();
}

class _RoomsCardState extends State<RoomsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RoomDetailsPage()));
        },
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
          width: MediaQuery.of(context).size.width,
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
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 0),
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${widget.roomDetails['image']}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.15),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5,
                                            left: 4,
                                            bottom: 0,
                                            right: 15),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "${widget.roomDetails['name']}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(top: 2, left: 0),
                                      child: Row(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 2),
                                                      child: Icon(
                                                          Icons.attach_money,
                                                          color: Colors.black54,
                                                          size: 17),
                                                    ),
                                                    Text(
                                                      "${widget.roomDetails['oldPrice']}",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 13,
                                                          decoration: widget
                                                                          .roomDetails[
                                                                      'newPrice'] ==
                                                                  0
                                                              ? TextDecoration
                                                                  .none
                                                              : TextDecoration
                                                                  .lineThrough,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      "/per night",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: Colors.black45,
                                                          fontSize: 13,
                                                          decoration: widget
                                                                          .roomDetails[
                                                                      'newPrice'] ==
                                                                  0
                                                              ? TextDecoration
                                                                  .none
                                                              : TextDecoration
                                                                  .lineThrough,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          widget.roomDetails['newPrice'] == 0
                                              ? Container()
                                              : Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 0),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "${widget.roomDetails['newPrice']}",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black54,
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Oswald',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 15),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "/per night",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black45,
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Oswald',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              widget.roomDetails['discount'] == 0
                                  ? Container()
                                  : Container(
                                      padding: EdgeInsets.only(
                                          top: 5, bottom: 5, right: 6, left: 6),
                                      margin:
                                          EdgeInsets.only(right: 0, left: 3),
                                      decoration: BoxDecoration(
                                          color: header,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Text(
                                        "${widget.roomDetails['discount']}% Off",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
