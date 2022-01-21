import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class goal extends StatefulWidget {
  const goal({Key? key}) : super(key: key);

  @override
  _goalState createState() => _goalState();
}

class _goalState extends State<goal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            elevation: 8,
            toolbarHeight: 60,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Edit profile'),
                Icon(Icons.notifications, size: 24, color: Colors.black)
              ],
            ),
            backgroundColor: Colors.tealAccent),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 250),
                child: Row(
                  children: [
                    Text("starting date"),
                    Text(":"),
                    Text("Feb 6 thur 2019"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Starting Weight",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                        SizedBox(width: 180),
                        RichText(
                            text: TextSpan(
                                text: '74 ',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: TextStyle(
                                  color: Colors.teal,
                                ))),
                        Text("Kg")
                      ],
                    ),
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Current Weight",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(width: 180),
                      RichText(
                          text: TextSpan(
                              text: '74 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                      Text("kg")
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("GoalWeight",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      SizedBox(width: 180),
                      RichText(
                          text: TextSpan(
                              text: '64 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                      Text("Kg")
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Monthly goal",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: 'Weight loss ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Activity level",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: 'Sedentary',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              SizedBox(height: 20),
              Text("Calories & macros goals",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Calories"),
                      RichText(
                          text: TextSpan(
                              text: '2412 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("carbohydrates  303 g ",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '50 % ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("protien  121 g ",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '20 % ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Fat  81g",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '30 % ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              SizedBox(height: 20),
              Text("Workout goals",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Cardio / week"),
                      RichText(
                          text: TextSpan(
                              text: '4 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                      Text("days")
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Workout/week ",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '3 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                      Text("days")
                    ],
                  )),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("minutes/workout",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '50 ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  )),
              SizedBox(height: 20),
              Text("Water Goals",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    children: [
                      Text("Glasses of water / day",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      RichText(
                          text: TextSpan(
                              text: '9  ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                      Text("GL")
                    ],
                  )),
            ],
          )
        ]));
  }
}
