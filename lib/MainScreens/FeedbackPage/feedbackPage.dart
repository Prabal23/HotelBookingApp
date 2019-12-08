import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/Forms/FeedbackForm/feedbackForm.dart';

import '../../main.dart';

class FeedbackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeedbackPageState();
  }
}

class FeedbackPageState extends State<FeedbackPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back,
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            child: FeedbackForm(),
          )
        ]));
  }
}
