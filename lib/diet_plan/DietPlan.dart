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
  bool ischanged = false;
  bool ischanged1 = false;
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
                      var index = 0;
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
                        var index = 1;
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
                        var index = 2;
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
                        var index = 3;
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
                                    color:
                                        ischanged ? Colors.green : Colors.black,
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
                                    color:
                                        ischanged1 ? Colors.red : Colors.black,
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
        ),
      )),
    );
  }
}
