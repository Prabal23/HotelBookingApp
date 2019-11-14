import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/Forms/WriteReviewForm/writeReviewForm.dart';

import '../../main.dart';

class WriteReviewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WriteReviewPageState();
  }
}

class WriteReviewPageState extends State<WriteReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back,
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            child: WriteReviewForm(),
          )
        ]));
  }
}
