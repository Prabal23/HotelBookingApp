import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelDetails/hotelDetails.dart';

import '../../main.dart';

class FavTripCard extends StatefulWidget {
  @override
  _FavTripCardState createState() => _FavTripCardState();
}

class _FavTripCardState extends State<FavTripCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HotelDetailsPage()));
        },
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(.2),
                //offset: Offset(6.0, 7.0),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 0),
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/h4.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.15),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0)),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin:
                                    EdgeInsets.only(top: 5, left: 0, bottom: 0),
                                child: Text(
                                  "Queens Hotel",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 0, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 0, left: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "Leistershire, England",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 13,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.attach_money,
                                              color: Colors.black87, size: 14),
                                          Text(
                                            "220",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 12,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 0, left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: header,
                                          size: 13,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: header,
                                          size: 13,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: header,
                                          size: 13,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: header,
                                          size: 13,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: header,
                                          size: 13,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "/per night",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 12,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w300),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
