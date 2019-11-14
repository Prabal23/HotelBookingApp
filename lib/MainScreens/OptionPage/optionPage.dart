import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';
import 'package:roome/MainScreens/RegisterPage/registerPage.dart';

import '../../main.dart';

class OptionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OptionPageState();
  }
}

class OptionPageState extends State<OptionPage> {
  List imgList = ["assets/images/p5.jpg", "assets/images/l1.jpg"];
  void imageChange(int index){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            height: 380,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/p5.jpg"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                        // new SizedBox(
                        //   height: 410.0,
                        //   width: MediaQuery.of(context).size.width,
                        //   child: new Carousel(
                        //     images: [
                        //       //new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                        //       new ExactAssetImage("assets/images/p5.jpg"),
                        //       new ExactAssetImage("assets/images/l2.jpg")
                        //     ],
                        //     autoplay: false,
                        //     dotSize: 5.0,
                        //     dotSpacing: 15.0,
                        //     dotColor: Colors.grey[300],
                        //     dotIncreasedColor: header,
                        //     indicatorBgPadding: 20.0,
                        //     dotBgColor: Colors.white
                        //     //borderRadius: true,
                        //   ),
                        // ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: BackButton(),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          "Plan your trips",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'BebasNeue',
                              fontWeight: FontWeight.normal),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          "Book one of our unique hotels to\nescape the ordinary",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w300
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
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
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'BebasNeue',
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // boxShadow: [
                              //   BoxShadow(
                              //     blurRadius: 5.0,
                              //     color: Colors.black.withOpacity(.5),
                              //     //offset: Offset(6.0, 7.0),
                              //   ),
                              // ],
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'BebasNeue',
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
