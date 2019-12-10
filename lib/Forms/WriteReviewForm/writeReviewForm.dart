import 'package:flutter/material.dart';

import '../../main.dart';

class WriteReviewForm extends StatefulWidget {
  @override
  _WriteReviewFormState createState() => _WriteReviewFormState();
}

class _WriteReviewFormState extends State<WriteReviewForm> {
  String _ratingStatus = 'No review';
  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });

    if (rating == 1) {
      _ratingStatus = "Poor";
    }
    if (rating == 2) {
      _ratingStatus = "Below Average";
    }
    if (rating == 3) {
      _ratingStatus = "Average";
    }
    if (rating == 4) {
      _ratingStatus = "Good";
    }
    if (rating == 5) {
      _ratingStatus = "Excellent";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      margin: EdgeInsets.only(left: 10, right: 25, top: 15),
      child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 11, left: 0, right: 20),
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
                      "Write a review",
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
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Fill up the below information to write your review",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w300),
              )),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Rating",
                  style: TextStyle(color: Colors.grey, fontFamily: "Oswald"),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 10, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 1
                                ? header
                                : Colors.grey.withOpacity(0.3),
                          ),
                          onTap: () => rate(1),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 2
                                ? header
                                : Colors.grey.withOpacity(0.4),
                          ),
                          onTap: () => rate(2),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 3
                                ? header
                                : Colors.grey.withOpacity(0.4),
                          ),
                          onTap: () => rate(3),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 4
                                ? header
                                : Colors.grey.withOpacity(0.4),
                          ),
                          onTap: () => rate(4),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 5
                                ? header
                                : Colors.grey.withOpacity(0.4),
                          ),
                          onTap: () => rate(5),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  _ratingStatus,
                  style: TextStyle(color: Colors.grey, fontFamily: "Oswald"),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 10,
              top: 15,
              left: 20,
            ),
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(.2),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 5, top: 3),
                        child: Icon(
                          Icons.description,
                          size: 19,
                          color: header,
                        )),
                    Flexible(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 200.0, minHeight: 100.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: TextField(
                            maxLines: null,
                            //controller: phoneController,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Oswald',
                            ),
                            decoration: InputDecoration(
                              hintText: "Description (Optional)",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: (){
              _showDoneDialog();
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 20, right: 0, bottom: 20),
                decoration: BoxDecoration(
                    color: header,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Text(
                  "Send",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'BebasNeue',
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
    ));
  }

  Future<Null> _showDoneDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: header, width: 1.5),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          Icons.done,
                          color: header,
                          size: 50,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Review has been given successfully",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                    left: 0, right: 0, top: 20, bottom: 0),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
