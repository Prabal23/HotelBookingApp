import 'package:flutter/material.dart';
import 'package:roome/Cards/GalleryCard/galleryCard.dart';

class HotelGalleryPage extends StatefulWidget {
  @override
  _HotelGalleryPageState createState() => _HotelGalleryPageState();
}

class _HotelGalleryPageState extends State<HotelGalleryPage> {
  List images = [
    "assets/images/premium.jpeg",
    "assets/images/deluxe.jpg",
    "assets/images/super.jpg",
    "assets/images/suite.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
                alignment: Alignment.centerLeft,
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "List of photos",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Oswald'),
                    ),
                  ],
                )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: Container(
              child: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return GalleryCard(images[index]);
                  },
                  childCount: images.length,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 190.0,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
