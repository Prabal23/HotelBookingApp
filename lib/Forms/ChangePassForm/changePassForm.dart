import 'package:flutter/material.dart';

import '../../main.dart';

class ChangePassForm extends StatefulWidget {
  @override
  _ChangePassFormState createState() => _ChangePassFormState();
}

class _ChangePassFormState extends State<ChangePassForm> {
  TextEditingController curPass = new TextEditingController();
  TextEditingController newPass = new TextEditingController();
  TextEditingController conPass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Container(
      key: key,
      child: Expanded(
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
                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Colors.black.withOpacity(.2),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(100)),
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
                              controller: curPass,
                              obscureText: true,
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
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  curPass.text = value;
                                });
                              },
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
                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Colors.black.withOpacity(.2),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(100)),
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
                              controller: newPass,
                              obscureText: true,
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
                  margin: EdgeInsets.only(bottom: 10, top: 0),
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
                        borderRadius: BorderRadius.all(Radius.circular(100)),
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
                              controller: conPass,
                              obscureText: true,
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
                    if (curPass.text != "123456") {
                      key.currentState.showSnackBar(new SnackBar(
                        content: new Text("Current Password doesn't match!"),
                      ));
                    } else if (newPass.text != conPass.text) {
                      key.currentState.showSnackBar(new SnackBar(
                        content:
                            new Text("Password confirmation is incorrect!"),
                      ));
                    } else {
                      _showDoneDialog();
                    }
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 0, right: 0, bottom: 20),
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
