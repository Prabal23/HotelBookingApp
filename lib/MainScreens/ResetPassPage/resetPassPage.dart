import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/Forms/ResetPassForm/resetPassForm.dart';
import 'package:roome/Forms/VerifyForm/verifyForm.dart';
import '../../main.dart';

class ResetPassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ResetPassPageState();
  }
}

class ResetPassPageState extends State<ResetPassPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back,
        body: ResetPassForm());
  }
}
