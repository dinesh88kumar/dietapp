import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/foodsdata/foodsdata.dart';
import 'package:diet_app/foodsdata/searchfoods.dart';
import 'package:diet_app/services/dailyfood.dart';
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
      GetDailyFoodData.refreshdata(this);
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
                Container(
                  height: 40,
                  color: Colors.tealAccent,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
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
                ),
                SizedBox(height: 10),
                breakfastColumn(GetDailyFoodData.breakfast)
              ],
            ),
          ),
          Container(
            // width: size.width / 1,

            child: Column(
              children: [
                SizedBox(height: 8),
                Container(
                  height: 40,
                  color: Colors.tealAccent,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("lunch"),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () => showSearch(
                                  context: context, delegate: Search('lunch')),
                              icon: Icon(Icons.add_circle))
                        ],
                      ),
                      Text("0 of 467 cal"),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                breakfastColumn(GetDailyFoodData.lunch)
              ],
            ),
          ),
          Container(
            // width: size.width / 1,
            child: Column(
              children: [
                SizedBox(height: 8),
                Container(
                  height: 40,
                  color: Colors.tealAccent,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("dinner"),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () => showSearch(
                                  context: context, delegate: Search('dinner')),
                              icon: Icon(Icons.add_circle))
                        ],
                      ),
                      Text("0 of 467 cal"),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                breakfastColumn(GetDailyFoodData.dinner)
              ],
            ),
          ),
          Container(
            // width: size.width / 1,
            child: Column(
              children: [
                SizedBox(height: 8),
                Container(
                  height: 40,
                  color: Colors.tealAccent,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("snack"),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () => showSearch(
                                  context: context, delegate: Search('snack')),
                              icon: Icon(Icons.add_circle))
                        ],
                      ),
                      Text("0 of 467 cal"),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                breakfastColumn(GetDailyFoodData.snack)
              ],
            ),
          ),
        ],
      ),
    )));
  }

  //breakfast column
  Column breakfastColumn(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(bfrow(
            element.foodname, element.calories, element.grams, element.foodid));
        d.add(SizedBox(
          height: 20,
        ));
      });
    });
    return Column(
      children: d,
    );
  }

  //break fast row
  Row bfrow(foodname, calories, grams, id) {
    dynamic _chosenValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodname),
              SizedBox(
                height: 8,
              ),
              Text('(' + grams.toString() + 'g' + ')')
            ],
          ),
        ),
        Text(calories.toString() + ' cal'),
        Container(
          width: 60,
          child: Column(
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
              Text('22k'),
            ],
          ),
        ),
        Container(
          width: 60,
          child: Column(
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
        ),
        Container(
          width: 40,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.info)),
          ),
        ),
      ],
    );
  }
  //lunch

}
