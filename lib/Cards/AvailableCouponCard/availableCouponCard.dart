import 'package:flutter/material.dart';
import 'package:roome/MainScreens/CouponDetails/couponDetails.dart';

import '../../main.dart';

class AvailableCouponCard extends StatefulWidget {
  @override
  _AvailableCouponCardState createState() => _AvailableCouponCardState();
}

class _AvailableCouponCardState extends State<AvailableCouponCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CouponDetailsPage(page: "1")));
        },
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
              // new Container(
              //   padding: EdgeInsets.only(left: 0),
              //   height: 160,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: index == 0
              //           ? AssetImage(
              //               "assets/images/h1.jpg")
              //           : AssetImage(
              //               "assets/images/h4.jpg"),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(15.0),
              //         topRight: Radius.circular(15.0)),
              //     // border: Border.all(width: 0.2, color: Colors.grey)
              //   ),
              //   child: Stack(
              //     children: <Widget>[
              //       Container(
              //           height: 160,
              //           width: MediaQuery.of(context)
              //               .size
              //               .width,
              //           decoration: BoxDecoration(
              //             color: Colors.black
              //                 .withOpacity(0.15),
              //             borderRadius: BorderRadius.only(
              //                 topLeft:
              //                     Radius.circular(15.0),
              //                 topRight:
              //                     Radius.circular(15.0)),
              //           )),
              //     ],
              //   ),
              // ),
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
                                                    color: Colors.black,
                                                    fontSize: 19,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 1),
                                                child: Text(
                                                  " discount on holiday",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.black,
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
                                                    color: header,
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
                                                                Colors.black54,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Oswald',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
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
                                  margin: EdgeInsets.only(
                                      left: 0, right: 0, top: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Sep 21, 2019",
                                          style: TextStyle(
                                              color: header,
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
      ),
    );
  }
}
