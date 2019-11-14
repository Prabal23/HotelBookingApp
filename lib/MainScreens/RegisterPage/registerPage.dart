import 'package:flutter/material.dart';
import 'package:roome/Forms/RegisterForm/registerForm.dart';
import 'package:roome/MainScreens/LoginPage/loginPage.dart';
import 'package:roome/MainScreens/Terms&Con/terms&Con.dart';

import '../../main.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: RegisterForm(),
        ),
      ),
    );
  }
}
