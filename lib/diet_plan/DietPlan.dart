import 'package:diet_app/diet_plan/costEffective.dart';
import 'package:diet_app/diet_plan/diet.dart';
import 'package:diet_app/diet_plan/lowCost.dart';
import 'package:diet_app/diet_plan/mealPlan.dart';
import 'package:flutter/material.dart';

class DietPlan extends StatefulWidget {
  const DietPlan({Key? key}) : super(key: key);

  @override
  _DietPlanState createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> {
  var toggleSelection = [true, false, false];
  List<Widget> widgetz = [Diet(), CostEffective(), LowCost(), MealPlan()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Center(
                    child: Text('2/30'),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.tealAccent,
                      )),
                ),
                ToggleButtons(
                  borderRadius: BorderRadius.circular(10),
                  disabledColor: Colors.teal,
                  children: [
                    Text('veg '),
                    Text(' Nonveg '),
                    Text(' Eggterian ')
                  ],
                  isSelected: toggleSelection,
                  onPressed: (int index) {
                    setState(() {
                      toggleSelection[index] = !toggleSelection[index];
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 28,
                              child: Text(
                                'meal',
                                maxLines: 2,
                                style: TextStyle(fontSize: 12),
                              )),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 28,
                                child: Text(
                                  'cost effective',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12),
                                )),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 28,
                                child: Text(
                                  'low cost',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12),
                                )),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 28,
                                child: Text(
                                  'meal plan',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12),
                                )),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            Container(
              child: widgetz[index],
            )
          ],
        ),
      )),
    );
  }
}
