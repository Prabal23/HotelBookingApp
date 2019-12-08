import 'package:flutter/material.dart';
import 'package:roome/MainScreens/ForgotPassPage/forgotPassPage.dart';
import 'package:roome/MainScreens/HomePage/homePage.dart';
import 'package:roome/MainScreens/RegisterPage/registerPage.dart';

import '../../main.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        image: AssetImage("assets/images/login.jpg"),
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
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 25, left: 20),
                    child: Text(
                      "Login",
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
                                  margin: EdgeInsets.only(left: 20, right: 10),
                                  decoration: BoxDecoration(
                                      color: fb,
                                      border: Border.all(
                                          color: Colors.white, width: 0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            EdgeInsets.only(top: 0, left: 5),
                                        child: Text(
                                          "Facebook",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Oswald',
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
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(left: 10, right: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(1.0),
                                        child: CircleAvatar(
                                          radius: 8.0,
                                          backgroundImage: AssetImage(
                                              'assets/images/google.png'),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 0, left: 5),
                                        child: Text(
                                          "Google",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Oswald',
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
                      "or Login with Email",
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
                      ),
                      decoration: InputDecoration(
                        hintText: "Your Email *",
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
          Container(
            margin: EdgeInsets.only(bottom: 15, top: 0),
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
                            ),
                            obscureText: count % 2 != 0 ? false : true,
                            decoration: InputDecoration(
                              hintText: "Password *",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
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
                                color: count % 2 != 0 ? header : Colors.black38,
                              )),
                        )
                      ],
                    )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassPage()),
              );
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 0, right: 35),
                      child: Text(
                        "Forgot Your Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Oswald',
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: header,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300),
                      )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: header,
                                  fontSize: 14,
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
    );
  }
}
