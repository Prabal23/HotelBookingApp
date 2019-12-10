import 'package:flutter/material.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';
import 'package:roome/MainScreens/Terms&Con/terms&Con.dart';

import '../../main.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  int count = 0, tnc = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/register.jpg"),
                          //fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: null,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 10, left: 0),
                  child: BackButton(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.normal),
                      )),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(10),
                                    margin:
                                        EdgeInsets.only(left: 20, right: 10),
                                    decoration: BoxDecoration(
                                        color: fb,
                                        border: Border.all(
                                            color: Colors.white, width: 0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 6.0,
                                            backgroundColor: Colors.transparent,
                                          ),
                                          decoration: new BoxDecoration(
                                            color: fb,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/fb.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 3, left: 5),
                                          child: Text(
                                            "Facebook",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontFamily: 'BebasNeue',
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(10),
                                    margin:
                                        EdgeInsets.only(left: 10, right: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey, width: 0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                          padding: EdgeInsets.all(1.0),
                                          child: CircleAvatar(
                                            radius: 8.0,
                                            backgroundImage: AssetImage(
                                                'assets/images/google.png'),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 3, left: 5),
                                          child: Text(
                                            "Google",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: 'BebasNeue',
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(
                        "or Sign up with Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 13,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: TextField(
                        //controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          hintText: "First Name *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: TextField(
                        //controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          hintText: "Last Name *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: TextField(
                        //controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                          hintText: "Your Email *",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                          //labelStyle: TextStyle(color: Colors.white70),
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              //controller: phoneController,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                              obscureText: count % 2 != 0 ? false : true,
                              decoration: InputDecoration(
                                hintText: "Password *",
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                                //labelStyle: TextStyle(color: Colors.white70),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  count % 2 != 0
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  size: 22,
                                  color:
                                      count % 2 != 0 ? header : Colors.black38,
                                )),
                          )
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: TextField(
                              //controller: phoneController,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                              decoration: InputDecoration(
                                hintText: "Invitation Code (Optional)",
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                                border: InputBorder.none,
                              ),
                            )),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tnc++;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 35, top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: tnc % 2 == 0 ? Colors.white : header,
                                border: Border.all(
                                    color: tnc % 2 == 0 ? Colors.grey : header),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.done,
                              size: 15,
                              color:
                                  tnc % 2 == 0 ? Colors.black38 : Colors.white,
                            ),
                          ),
                          Container(
                              margin:
                                  EdgeInsets.only(right: 20, left: 5, top: 10),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Agree with our ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 12,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w300),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TnCPage()),
                                      );
                                    },
                                    child: Container(
                                      child: Text(
                                        "Terms & Conditions",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: header,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _showDoneDialog();
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: header,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'BebasNeue',
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Already have an account?",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300),
                        )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: header,
                                    fontSize: 15,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              )),
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
                            border: Border.all(
                                color: tnc % 2 == 0 ? Colors.redAccent : header,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          tnc % 2 == 0 ? Icons.close : Icons.done,
                          color: tnc % 2 == 0 ? Colors.redAccent : header,
                          size: 50,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          tnc % 2 == 0
                              ? "Make sure you are agree with our terms and condition"
                              : "Registration completed successfully!",
                          textAlign: TextAlign.center,
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
                              tnc % 2 == 0
                                  ? null
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
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
                                  tnc % 2 == 0 ? "OK" : "Login",
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
