import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/foodsdata/searchfoods.dart';
import 'package:diet_app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectFood extends StatefulWidget {
  String foodname, time;
  int calories;
  SelectFood(
      {required this.foodname, required this.calories, required this.time});

  @override
  _SelectFoodState createState() => _SelectFoodState();
}

class _SelectFoodState extends State<SelectFood> {
  dynamic _chosenValue = 100;

  @override
  Widget build(BuildContext context) {
    dynamic calories = 88;
    // calories = widget.calories;
    Size size = MediaQuery.of(context).size;
    setState(() {
      if (_chosenValue == 50) {
        calories = calories / 2;
      } else {
        calories = (calories / 100) * _chosenValue;
      }
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text('foodname'),

              SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            iconSize: 18,
                            focusColor: Colors.pink,
                            value: _chosenValue,
                            style: TextStyle(color: Colors.white),
                            iconEnabledColor: Colors.black,
                            items: [50, 100, 150, 200, 250, 300, 400, 500]
                                .map<DropdownMenuItem>((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value.toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            hint: const Text(
                              "100",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            onChanged: (dynamic value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('grams'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Calories: ' + calories.toString()),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  var now = new DateTime.now();

                  var formatter = new DateFormat('dd-MM-yyyy');

                  String formattedDate = formatter.format(now);

                  print(formattedDate);

                  FirebaseFirestore.instance
                      .collection('Diet_app_users')
                      .doc('userid')
                      .collection(widget.time)
                      .add({
                    'Date': formattedDate,
                    'foodname': widget.foodname,
                    'calories': calories,
                    'grams': _chosenValue
                  });

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => MyNavigationBar()));
                },
                child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Add'),
                    )),
              )
              // Container(
              //   width: size.width / 1,
              //   height: 50,
              //   decoration: BoxDecoration(
              //       color: Colors.tealAccent.shade200,
              //       borderRadius: BorderRadius.circular(8)),
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextField(
              //     onTap: () =>
              //         showSearch(context: context, delegate: Search('breakfast')),
              //     readOnly: true,
              //     decoration: InputDecoration(
              //         labelText: 'search foods', suffixIcon: Icon(Icons.search)),
              //   ),
              // )
            ],
          ),
        ),
      )),
    );
  }
}
