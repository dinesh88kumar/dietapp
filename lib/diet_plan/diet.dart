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
    Size size = MediaQuery.of(context).size;
    return Container(
        child: SafeArea(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            // width: size.width / 1,
            child: Column(
              children: [
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Breakfast"),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () => showSearch(
                                context: context,
                                delegate: Search('breakfast')),
                            icon: Icon(Icons.add_circle))
                      ],
                    ),
                    Text("0 of 467 cal"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("food name"),
                    Text("81g cal"),
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
