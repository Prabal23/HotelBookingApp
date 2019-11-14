import 'package:flutter/material.dart';

class UsedCouponCard extends StatefulWidget {
  @override
  _UsedCouponCardState createState() => _UsedCouponCardState();
}

class _UsedCouponCardState extends State<UsedCouponCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(left: 5, top: 5),
        margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    //width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 0, bottom: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 5,
                                          left: 3,
                                          bottom: 0,
                                          right: 15),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              "35%",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontSize: 19,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 1),
                                              child: Text(
                                                " discount on holiday",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontSize: 15,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(top: 2, left: 0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 0),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.home,
                                                  color: Colors.grey[500],
                                                  size: 17,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 3),
                                                    child: Text(
                                                      "Grand Sultan Tea Resort and Golf",
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[500],
                                                          fontSize: 12,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                //width: 100,
                                padding: EdgeInsets.all(7),
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Container(
                                  margin: EdgeInsets.only(top: 0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Sep 21, 2019",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 12,
                                            fontFamily: 'Oswald'),
                                        textAlign: TextAlign.center,
                                      ),
                                      // Container(
                                      //     margin: EdgeInsets
                                      //         .only(
                                      //             top:
                                      //                 4, left: 3),
                                      //     child: Icon(
                                      //       Icons
                                      //           .arrow_forward,
                                      //       color:
                                      //           header,
                                      //       size: 13,
                                      //     ))
                                    ],
                                  ),
                                )),
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
    );
  }
}