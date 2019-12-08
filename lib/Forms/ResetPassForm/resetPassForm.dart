import 'package:flutter/material.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';

import '../../main.dart';

class ResetPassForm extends StatefulWidget {
  @override
  _ResetPassFormState createState() => _ResetPassFormState();
}

class _ResetPassFormState extends State<ResetPassForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
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
                        "Reset Password",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Oswald'),
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 15),
                child: new Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Enter a new password",
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
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.lock_outline,
                                    size: 19,
                                    color: header,
                                  )),
                              Flexible(
                                child: TextField(
                                  //controller: phoneController,
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Oswald',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "New Password",
                                    hintStyle: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 15,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w300),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        10.0, 0.0, 10.0, 0.0),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showDoneDialog();
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(left: 0, right: 0),
                          decoration: BoxDecoration(
                              color: header,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Submit",
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
            ),
          ],
        ),
      ),
    );
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
                          "Password has been reset successfully",
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
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
                                  "Login",
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
