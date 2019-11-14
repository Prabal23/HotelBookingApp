import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

class HomePopularCard extends StatefulWidget {
  @override
  _HomePopularCardState createState() => _HomePopularCardState();
}

class _HomePopularCardState extends State<HomePopularCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HotelSearchPage()),
          );
        },
        child: new Container(
          margin: EdgeInsets.only(left: 15, right: 5, top: 5, bottom: 5),
          padding: EdgeInsets.only(left: 0),
          height: 115,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/russia.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(.5),
                //offset: Offset(6.0, 7.0),
              ),
            ],
            // border: Border.all(width: 0.2, color: Colors.grey)
          ),
          child: Stack(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 0),
                  padding: EdgeInsets.only(left: 0),
                  height: 130,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.15),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  )),
              Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  child: Text(
                    "Russia",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
