import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';
import 'package:roome/MainScreens/OptionPage/optionPage.dart';

import '../../main.dart';

class StartingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartingPageState();
  }
}

class StartingPageState extends State<StartingPage> {
  bool internet = true;

  @override
  void initState() {
    internetCheck();
    super.initState();
  }

  void internetCheck() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      setState(() {
        internet = true;
      });
    } else if (connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        internet = true;
      });
    } else {
      setState(() {
        internet = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          internet == false
              ? Container()
              : Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/p5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: null),
                ),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7)),
                child: null),
          ),
          internet == false
              ? Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(
                                'assets/images/no_net.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("No network!",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            margin: EdgeInsets.only(top: 0, bottom: 10),
                            child: Text(
                                "No internet connection\nCheck the connection of the network",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black38))),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: header,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.refresh,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "Retry",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: header,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 35,
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Roome",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontFamily: 'BebasNeue',
                                      fontWeight: FontWeight.normal),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Best hotel deals for your holiday",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Oswald',
                                  ),
                                ))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OptionPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(15),
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  decoration: BoxDecoration(
                                      color: header,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'BebasNeue',
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Already have an account?",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontFamily: 'Oswald'),
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
                                        margin:
                                            EdgeInsets.only(top: 20, left: 5),
                                        child: Text(
                                          "Log in",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14,
                                              fontFamily: 'Oswald'),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
