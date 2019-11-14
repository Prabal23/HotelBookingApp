import 'package:flutter/material.dart';

import '../../main.dart';

class ReviewCard extends StatefulWidget {
  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        //color: Colors.blue,
        //padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(left: 0, right: 0, bottom: 5, top: 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 0, top: 0),
                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                          padding: EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage('assets/images/man.png'),
                          ),
                          decoration: new BoxDecoration(
                            color: Colors.grey[200], // border color
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black.withOpacity(.2),
                                //offset: Offset(6.0, 7.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "John Smith",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "Aug 29, 2019",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 12,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "I am very happy with the hotel service. Very tasty foods, beautiful locations, pool water was clean. The people working there was very warm and friendly. Overall the hotel is very good. I recommend everyone to visit there.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30, left: 0, right: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.black38,
                        //offset: Offset(6.0, 7.0),
                      ),
                    ],
                    border: Border.all(width: 0.15, color: Colors.black38))),
          ],
        ),
      ),
    );
  }
}
