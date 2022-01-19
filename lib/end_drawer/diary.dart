import 'package:diet_app/end_drawer/diary/history.dart';
import 'package:diet_app/end_drawer/diary/notes.dart';
import 'package:diet_app/end_drawer/diary/nutrients.dart';
import 'package:diet_app/end_drawer/diary/recipies.dart';
import 'package:flutter/material.dart';

class diary extends StatefulWidget {
  const diary({Key? key}) : super(key: key);

  @override
  _diaryState createState() => _diaryState();
}

class _diaryState extends State<diary> {
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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Diary'),
            PopupMenuButton(
                color: Colors.white,
                offset: Offset(10, -10),
                icon: Icon(
                  Icons.more_vert,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Column(children: [
                        InkWell(
                          child: Container(
                            height: 25,
                            child: Text("History",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => history()));
                          },
                        ),
                        Divider(height: 0.2),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(
                            height: 25,
                            child: Text("nutrients",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => nutrients()));
                          },
                        ),
                        Divider(
                          height: 0.2,
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(
                            height: 25,
                            child: Text("Notes",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => notes()));
                          },
                        ),
                        Divider(
                          height: 0.2,
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(
                            height: 25,
                            child: Text("Recipies",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => recipies()));
                          },
                        ),
                      ]))
                    ])
          ]),
          backgroundColor: Colors.tealAccent),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(" Day 1 of 180 days"),
                      Text("0 of 200 cal"),
                    ],
                  ),
                  SizedBox(width: 200),
                  Column(
                    children: [
                      Text("1 thur"),
                      Text("jan 2019"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  children: [
                    Text("Goals"),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        Text("calories taken"),
                        Text(" by food"),
                      ],
                    ),
                    SizedBox(width: 30),
                    Text("_"),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text("Burnt calories "),
                        Text(" by workout"),
                      ],
                    ),
                    SizedBox(width: 70),
                    Text("total"),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("1."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("2."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("3."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("4."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("5."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("6."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("7."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("8."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("9."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 70),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 51),
                  Text("="),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("10."),
                  SizedBox(width: 20),
                  Text("2,412"),
                  SizedBox(width: 65),
                  Text("2,812"),
                  SizedBox(width: 60),
                  Text("_"),
                  SizedBox(width: 60),
                  Text("400"),
                  SizedBox(width: 53),
                  Text("="),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Text("2412"),
                      Text("+"),
                      Text("9 cups of water"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text("total calories of this month"),
                  SizedBox(width: 100),
                  Text("="),
                  SizedBox(width: 100),
                  Text("1,40,000 calories"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
