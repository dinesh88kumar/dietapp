import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/foodsdata/foodsdata.dart';
import 'package:diet_app/foodsdata/searchfoods.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  var toggleSelection = [true, false, false];

  bool ischanged = false;
  bool ischanged1 = false;
  @override
  void initState() {
    setState(() {
      FoodList.refreshdata(this);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Column(
      children: [
        RaisedButton(
          child: Icon(Icons.search),
          onPressed: () => showSearch(context: context, delegate: Search()),
        ),
        Container(
          height: 320,
          width: 455,
          child: ListView(children: [
            Card(
              child: Column(
                //break fast column scrollable

                children: [
                  SizedBox(height: 10),
                  Row(
                    //particular row
                    children: const [
                      Text("Breakfast"),
                      SizedBox(width: 200),
                      Text("0 of 467 cal"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  Row(
                    //2nd row (dish)
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("showmore"),
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Card(),
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                //break fast column scrollable

                children: [
                  SizedBox(height: 10),
                  Row(
                    //particular row
                    children: const [
                      Text("Morning Snacks"),
                      SizedBox(width: 200),
                      Text("0 of 467 cal"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  Row(
                    //2nd row (dish)
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("showmore"),
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Card(),
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                //break fast column scrollable

                children: [
                  SizedBox(height: 10),
                  Row(
                    //particular row
                    children: const [
                      Text("Lunch"),
                      SizedBox(width: 200),
                      Text("0 of 467 cal"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  Row(
                    // 2nd row(dish)
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("showmore"),
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Card(),
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                //break fast column scrollable

                children: [
                  SizedBox(height: 10),
                  Row(
                    //particular row
                    children: const [
                      Text("evening snacks"),
                      SizedBox(width: 200),
                      Text("0 of 467 cal"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  Row(
                    // 2nd row(dish)
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("showmore"),
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Card(),
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                //break fast column scrollable

                children: [
                  SizedBox(height: 10),
                  Row(
                    //particular row
                    children: const [
                      Text("Dinner"),
                      SizedBox(width: 200),
                      Text("0 of 467 cal"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  Row(
                    // 2nd row(dish)
                    //particular dish row
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        color: Color(0xff00ffb2),
                        child: Text("pic"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        //3 lines like dish name and all
                        children: const [
                          Text("food name"),
                          Text("2 pieces"),
                          Text("south Indian"),
                        ],
                      ),
                      SizedBox(width: 40),
                      Text("81g cal"),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged = !ischanged;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_up_outlined,
                                color: ischanged ? Colors.green : Colors.black,
                              )),
                          Text("ate (22.k)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ischanged1 = !ischanged1;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: ischanged1 ? Colors.red : Colors.black,
                              )),
                          Text("not (180)"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.info)),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("showmore"),
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Card(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        )
      ],
    )));
  }
}
