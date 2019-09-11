import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/ProfilePage/profileEdit.dart';
import 'package:roome/RegisterPage/registerPage.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import '../main.dart';

class ChangePassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChangePassPageState();
  }
}

class ChangePassPageState extends State<ChangePassPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back,
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
                          "Change Password",
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
                    margin: EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: new Column(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 12),
                            child: Text(
                              "Enter your current password to reset your password",
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
                              margin:
                                  EdgeInsets.only(left: 0, right: 0, top: 0),
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
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Oswald',
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Your Current Password",
                                        hintStyle: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 15,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                        //labelStyle: TextStyle(color: Colors.white70),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0, 0.0, 10.0, 0.0),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 12),
                            child: Text(
                              "Enter new password",
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
                              margin:
                                  EdgeInsets.only(left: 0, right: 0, top: 0),
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
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Oswald',
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Your New Password",
                                        hintStyle: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 15,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                        //labelStyle: TextStyle(color: Colors.white70),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0, 0.0, 10.0, 0.0),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 0),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(10),
                              margin:
                                  EdgeInsets.only(left: 0, right: 0, top: 0),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.lock_open,
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
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 15,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                        //labelStyle: TextStyle(color: Colors.white70),
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
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, bottom: 20),
                              decoration: BoxDecoration(
                                  color: header,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
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
                ),
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
                          "Password has been changed successfully",
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
