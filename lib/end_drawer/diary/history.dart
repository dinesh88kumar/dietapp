import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
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
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Row(children: [
                      Text("nov,2019"),
                      PopupMenuButton(
                          color: Colors.white,
                          offset: Offset(10, -10),
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Column(children: [
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("January",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(height: 0.2),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("Feburary",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("March",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("April",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("May",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("June",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("July",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("Aug",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("September",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("October",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("November",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                  SizedBox(height: 5),
                                  InkWell(
                                    child: Container(
                                      height: 25,
                                      child: Text("December",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black)),
                                    ),
                                    onTap: () {},
                                  ),
                                  Divider(
                                    height: 0.2,
                                  ),
                                ]))
                              ])
                    ]),
                  ),
                ),
                SizedBox(height: 20),
                Row(
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
            )
          ],
        ));
  }
}
