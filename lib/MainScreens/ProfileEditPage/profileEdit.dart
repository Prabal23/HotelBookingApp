import 'dart:io';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:roome/Forms/ProfileEditForm/profileEditForm.dart';

import '../../main.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileEditPageState();
  }
}

class ProfileEditPageState extends State<ProfileEditPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: ProfileEditForm(),
          ),
        ));
  }
}
