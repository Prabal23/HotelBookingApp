import 'package:flutter/material.dart';
import 'package:roome/MainScreens/VerifyPage/verifyPage.dart';

import '../../main.dart';

class ForgetPassForm extends StatefulWidget {
  @override
  _ForgetPassFormState createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 15),
        child: new Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  "Enter your email address to receive an email to reset your password",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w300),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 20),
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
                        //offset: Offset(6.0, 7.0),
                      ),
                    ],
                    //border: Border.all(color: Colors.grey, width: 0.3),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.email,
                            size: 19,
                            color: header,
                          )),
                      Flexible(
                        child: TextField(
                          //controller: phoneController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Oswald',
                          ),
                          decoration: InputDecoration(
                            hintText: "Your Email",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 15,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w300),
                            //labelStyle: TextStyle(color: Colors.white70),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Container(
                    //     width: 50,
                    //     margin: EdgeInsets.only(
                    //         top: 5, left: 25, right: 15),
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.all(
                    //             Radius.circular(15.0)),
                    //         color: Colors.white,
                    //         boxShadow: [
                    //           BoxShadow(
                    //             blurRadius: 3.0,
                    //             color: Colors.black38,
                    //             //offset: Offset(6.0, 7.0),
                    //           ),
                    //         ],
                    //         border: Border.all(
                    //             width: 0.15, color: Colors.black38))),
                    Text(
                      "or",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w300),
                    ),
                    // Container(
                    //     width: 50,
                    //     margin: EdgeInsets.only(
                    //         top: 5, left: 15, right: 25),
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.all(
                    //             Radius.circular(15.0)),
                    //         color: Colors.white,
                    //         boxShadow: [
                    //           BoxShadow(
                    //             blurRadius: 3.0,
                    //             color: Colors.black38,
                    //             //offset: Offset(6.0, 7.0),
                    //           ),
                    //         ],
                    //         border: Border.all(
                    //             width: 0.15, color: Colors.black38))),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
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
                        //offset: Offset(6.0, 7.0),
                      ),
                    ],
                    //border: Border.all(color: Colors.grey, width: 0.3),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.phone,
                            size: 19,
                            color: header,
                          )),
                      Flexible(
                        child: TextField(
                          //controller: phoneController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Oswald',
                          ),
                          decoration: InputDecoration(
                            hintText: "Your Phone",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 15,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w300),
                            //labelStyle: TextStyle(color: Colors.white70),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VerifyPage()));
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(left: 0, right: 0),
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
      ),
    );
  }
}
