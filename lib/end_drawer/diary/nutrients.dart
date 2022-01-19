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
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(children: [
              Text("1 thur"),
              Text("jan 2019"),
              SizedBox(height: 20),
              Row(
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
                  SizedBox(width: 70),
                  Text("total"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 5),
                  Text("2412"),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 5),
                  Text("2412"),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 5),
                  Text("2412"),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 5),
                  Text("2412"),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("2452"),
                ],
              ),
              Row(
                children: [
                  Text("1"),
                  SizedBox(width: 5),
                  Text("2412"),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text("301g"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("150"),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text("69"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("2452"),
                ],
              ),
            ]))
      ]),
    );
  }
}
