import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/Forms/ForgetPassForm/forgetPassForm.dart';
import 'package:roome/MainScreens/VerifyPage/verifyPage.dart';

import '../../main.dart';

class ForgotPassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPassPageState();
  }
}

class ForgotPassPageState extends State<ForgotPassPage> {
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
                          "Forgot Password",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Oswald'),
                        )),
                  ],
                ),
              ),
              ForgetPassForm(),
            ],
          ),
        ));
  }
}
