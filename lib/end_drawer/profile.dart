import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
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
              Text(' profile'),
              Icon(Icons.notifications, size: 24, color: Colors.black)
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Edit Profile",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                        child: Center(child: Text("update new photo")),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                        child: Center(child: Text("Delete existing photo")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 360),
              child: Text("UserName",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 45,
                  width: 320,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text("xxxxxyyy"),
                      SizedBox(width: 60),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_edit_outline_outlined)),
                    ],
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 360),
              child: Text("Email ID",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 45,
                  width: 320,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text("xxxxxyyy"),
                      SizedBox(width: 100),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_edit_outline_outlined)),
                    ],
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 360),
              child: Text("location",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 45,
                  width: 320,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text("xxxxxyyy"),
                      SizedBox(width: 100),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_edit_outline_outlined)),
                    ],
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 360),
              child: Text("zipcode",
                  style: GoogleFonts.dmSans(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 45,
                  width: 320,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text("xxxxxyyy"),
                      SizedBox(width: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_edit_outline_outlined)),
                    ],
                  )),
            ),
            SizedBox(height: 10),
            Text("physical profile",
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("height",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(height: 5),
                      Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Text("xxxxxyyy"),
                              SizedBox(width: 20),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mode_edit_outline_outlined)),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text("weight",
                          style: GoogleFonts.dmSans(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(height: 5),
                      Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Text("xxxxxyyy"),
                              SizedBox(width: 20),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mode_edit_outline_outlined)),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Activity level",
                style: GoogleFonts.dmSans(
                    fontSize: 15, fontWeight: FontWeight.w700)),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text("sedentary")),
                        onTap: () {},
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text("active")),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text("moderately active")),
                        onTap: () {},
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text("very active")),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("body fat",
                style: GoogleFonts.dmSans(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Text("Low")),
                    onTap: () {},
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Text("Medium")),
                    onTap: () {},
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Text("High")),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
