import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/FeedbackPage/feedbackPage.dart';

import '../../main.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaymentPageState();
  }
}

class PaymentPageState extends State<PaymentPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0, left: 10, right: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: BackButton(),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          "Pay via Bkash",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Oswald'),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/qrcode.png"),
                                  //fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: null,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 20, right: 5, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 0, bottom: 0),
                                        child: Text(
                                          "About payment",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w400),
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                //width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 2, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Help for payment",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10,
                                          left: 0,
                                          right: 25,
                                          bottom: 0),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "1) Copy below Bkash number for payment\n2) Scan the above QR Code from Bkash App to make payment\n3) Enter Hotel Confirmation Code in the reference\n4) Contact Roome for payment related topics",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FeedbackPage()));
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 0, left: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Contact us",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: header,
                                                        fontSize: 14,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: 4),
                                                      child: Icon(
                                                          Icons.chevron_right,
                                                          color: header,
                                                          size: 17))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10, left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Bkash Number",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              padding: EdgeInsets.all(15),
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 10,
                                                  bottom: 20),
                                              decoration: BoxDecoration(
                                                  color: back,
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 0.2),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              child: Container(
                                                margin: EdgeInsets.only(top: 5),
                                                child: Text(
                                                  "01720848705",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(15),
                                            margin: EdgeInsets.only(
                                                left: 0,
                                                right: 15,
                                                top: 10,
                                                bottom: 20),
                                            decoration: BoxDecoration(
                                                color: header,
                                                border: Border.all(
                                                    color: header, width: 0.2),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15))),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Copy",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'BebasNeue',
                                                ),
                                                textAlign: TextAlign.center,
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
              ),
            ],
          ),
        ));
  }
}
