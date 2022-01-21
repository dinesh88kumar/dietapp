import 'package:flutter/material.dart';

class nutrients extends StatefulWidget {
  const nutrients({Key? key}) : super(key: key);

  @override
  _nutrientsState createState() => _nutrientsState();
}

class _nutrientsState extends State<nutrients> {
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
              Text(' History'),
              Icon(Icons.notifications, size: 24, color: Colors.black)
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(children: [
              Text("1 thur"),
              Text("jan 2019"),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("total Cl"),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        Text("Carbohydrates"),
                        Text("50% (303g)"),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text("Protein "),
                        Text("20% (121g)"),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text("Fat "),
                        Text("30% (81g)"),
                      ],
                    ),
                    SizedBox(width: 50),
                    Text("total"),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 20),
                  Text("2412"),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 75),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 20),
                  Text("2412"),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 75),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 20),
                  Text("2412"),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 75),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 20),
                  Text("2412"),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 75),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 20),
                  Text("2412"),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 75),
                  Text("2452"),
                ],
              ),
            ]))
      ]),
    );
  }
}
