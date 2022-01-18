import 'dart:html';

import 'package:flutter/material.dart';

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
              Text('Edit profile'),
              Icon(Icons.notifications, size: 24, color: Colors.black)
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: ListView(children: [
        Column(
          children: [
            Row(
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
            Text("UserName"),
            Container(
                height: 40,
                width: 250,
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
            SizedBox(height: 20),
            Text("Email ID"),
            Container(
                height: 40,
                width: 250,
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
            SizedBox(height: 20),
            Text("location"),
            Container(
                height: 40,
                width: 250,
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
            SizedBox(height: 20),
            Text("zipcode"),
            Container(
                height: 40,
                width: 250,
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
            Text("physical profile"),
            Row(
              children: [
                Column(
                  children: [
                    Text("height"),
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
                    Text("weight"),
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
            Text("body fat"),
            Row(
              children: [
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("Low")),
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("Medium")),
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("High")),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Activity level"),
            Row(
              children: [
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("sedentary")),
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("active")),
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("moderately active")),
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("very active")),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
