import 'package:flutter/material.dart';
import 'package:roome/MainScreens/HotelSearchPage/hotelSearchPage.dart';

class InsidePopularPlacecard extends StatefulWidget {
  @override
  _InsidePopularPlacecardState createState() => _InsidePopularPlacecardState();
}

class _InsidePopularPlacecardState extends State<InsidePopularPlacecard> {
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
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(.2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 0),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/russia.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0)),
                    color: Colors.white,
                    border: Border.all(width: 0.2, color: Colors.grey)),
                child: Stack(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 0),
                        padding: EdgeInsets.only(left: 0),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
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
                              fontSize: 25,
                              fontFamily: 'BebasNeue',
                              fontWeight: FontWeight.bold),
                        )),
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
