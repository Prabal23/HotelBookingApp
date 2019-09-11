import 'dart:io';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roome/LoginPage/loginPage.dart';
import 'package:roome/RegisterPage/registerPage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../main.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileEditPageState();
  }
}

class ProfileEditPageState extends State<ProfileEditPage> {
  int page = 0;
  Future<File> fileImage;
  var profileImage;
  String uname = "",
      fname = "",
      email = "",
      phone = "",
      day = '',
      month = '',
      year = '',
      address = "";
  String unameStr = "john_smith12",
      fnameStr = "John Smith",
      emailStr = "john_smith12@gmail.com",
      phoneStr = "+0821 713 252",
      yearStr = "",
      addressStr = "123, Royal Street, New York, USA";
  int uInt = 0,
      fInt = 0,
      emailInt = 0,
      phoneInt = 0,
      yearInt = 0,
      aInt = 0,
      btn = 0;
  TextEditingController unameController = new TextEditingController();
  TextEditingController fnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController yearController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  DateTime _date = DateTime.now();
  List _day = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  List _months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<DropdownMenuItem<String>> _dropDownDayItems, _dropDownMonthItems;

  List<DropdownMenuItem<String>> getDropDowndayItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String days in _day) {
      items.add(new DropdownMenuItem(
          value: days,
          child: new Text(
            days,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w400),
          )));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMonthItems() {
    List<DropdownMenuItem<String>> items1 = new List();
    for (String month in _months) {
      items1.add(new DropdownMenuItem(
          value: month,
          child: new Text(
            month,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w400),
          )));
    }
    return items1;
  }

  pickImagefromGallery(ImageSource src) {
    setState(() {
      fileImage = ImagePicker.pickImage(source: src);
    });
  }

  @override
  void initState() {
    day = DateFormat("dd").format(_date);
    _dropDownDayItems = getDropDowndayItems();
    day = _dropDownDayItems[0].value;

    month = DateFormat("MMM").format(_date);
    _dropDownMonthItems = getDropDownMonthItems();
    month = _dropDownMonthItems[0].value;

    yearStr = DateFormat("yyyy").format(_date);
    //yearInt = int.parse(year);

    unameController.text = unameStr;
    fnameController.text = fnameStr;
    emailController.text = emailStr;
    phoneController.text = phoneStr;
    yearController.text = yearStr;
    addressController.text = addressStr;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: new Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 15),
                              child: BackButton(),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 15, left: 10),
                                child: Text(
                                  "Edit Profile",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Oswald'),
                                )),
                          ],
                        ),
                      ),
                      // Container(
                      //     margin: EdgeInsets.only(left: 5, right: 20, top: 15),
                      //     child: Row(
                      //       children: <Widget>[
                      //         Text(
                      //           "Edit",
                      //           style: TextStyle(
                      //               color: header,
                      //               fontSize: 17,
                      //               fontFamily: 'Oswald',
                      //               fontWeight: FontWeight.w300),
                      //         ),
                      //         Icon(Icons.chevron_right, color: header)
                      //       ],
                      //     )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            FutureBuilder<File>(
                              future: fileImage,
                              builder: (BuildContext context,
                                  AsyncSnapshot<File> snapshot) {
                                if (snapshot.connectionState ==
                                        ConnectionState.done &&
                                    snapshot.data != null) {
                                  return Center(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 0, top: 0),
                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                      padding: EdgeInsets.all(1.0),
                                      child: CircleAvatar(
                                        radius: 50.0,
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                            FileImage(snapshot.data),
                                      ),
                                      decoration: new BoxDecoration(
                                        color: Colors.grey[200], // border color
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Colors.black.withOpacity(.2),
                                            //offset: Offset(6.0, 7.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else if (snapshot.error != null) {
                                  return const Text(
                                    'Error Picking Image',
                                    textAlign: TextAlign.center,
                                  );
                                } else {
                                  return Center(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 0, top: 0),
                                      //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                      padding: EdgeInsets.all(1.0),
                                      child: CircleAvatar(
                                        radius: 50.0,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/images/man.png'),
                                      ),
                                      decoration: new BoxDecoration(
                                        color: Colors.grey[200], // border color
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Colors.black.withOpacity(.2),
                                            //offset: Offset(6.0, 7.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            GestureDetector(
                              onTap: (){
                                pickImagefromGallery(ImageSource.gallery);
                              },
                              child: Container(
                                  margin: EdgeInsets.only(left: 65, top: 75),
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: header,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Icon(
                                    Icons.photo_camera,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Username",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        ),
                        uInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      uInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              unameStr,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            controller: unameController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Username",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                uname = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (uname != "") {
                                              unameStr = uname;
                                            }
                                            uInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            uInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Full Name",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        ),
                        fInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              fnameStr,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            controller: fnameController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Full Name",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                fname = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (fname != "") {
                                              fnameStr = fname;
                                            }
                                            fInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            fInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Email",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        ),
                        emailInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      emailInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              emailStr,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            controller: emailController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Email",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                email = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (email != "") {
                                              emailStr = email;
                                            }
                                            emailInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            emailInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Phone",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        ),
                        phoneInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      phoneInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              phoneStr,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            controller: phoneController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Phone",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                phone = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (phone != "") {
                                              phoneStr = phone;
                                            }
                                            phoneInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            phoneInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        yearInt == 0
                            ? Container(
                                child: Text(
                                  "Date of Birth",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.only(top: 14),
                                child: Text(
                                  "Date of Birth",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                        yearInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      yearInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              "$month $day, $yearStr",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isDense: true,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black54,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w400),
                                          value: day,
                                          items: _dropDownDayItems,
                                          onChanged: (String value) {
                                            setState(() {
                                              day = value;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "/",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black54,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            value: month,
                                            items: _dropDownMonthItems,
                                            onChanged: (String value) {
                                              setState(() {
                                                month = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "/",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: yearController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Birth Date",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                year = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (year != "") {
                                              yearStr = year;
                                            }
                                            yearInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            yearInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Address",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400),
                        ),
                        aInt == 0
                            ? Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      aInt = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              addressStr,
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.chevron_right,
                                                color: Colors.black38,
                                                size: 18))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            controller: addressController,
                                            maxLines: null,
                                            autofocus: true,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400),
                                            decoration: InputDecoration(
                                              hintText: "Your Address",
                                              hintStyle: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontFamily: 'Oswald',
                                                  fontWeight: FontWeight.w300),
                                              //labelStyle: TextStyle(color: Colors.white70),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 0.0, 20.0, 5.0),
                                              border: InputBorder.none,
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                address = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (address != "") {
                                              addressStr = address;
                                            }
                                            aInt = 0;
                                            btn = 1;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.done,
                                                color: Colors.green, size: 18)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            aInt = 0;
                                          });
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Icon(Icons.close,
                                                color: Colors.redAccent,
                                                size: 18)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black38,
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                          border:
                              Border.all(width: 0.15, color: Colors.black38))),
                  btn == 1
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: header,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'BebasNeue',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Icon(
                              //   Icons.chevron_right,
                              //   color: Colors.white,
                              // )
                            ],
                          ))
                      : Container(),
                ],
              ),
            ),
          ),
        ));
  }
}
