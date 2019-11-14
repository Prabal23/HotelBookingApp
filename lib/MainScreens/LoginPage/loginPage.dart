import 'package:flutter/material.dart';
import 'package:roome/Forms/LoginForm/loginForm.dart';
import 'package:roome/MainScreens/ForgotPassPage/forgotPassPage.dart';
import 'package:roome/MainScreens/HomePage/homePage.dart';
import 'package:roome/MainScreens/RegisterPage/registerPage.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
