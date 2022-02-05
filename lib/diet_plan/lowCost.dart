import 'package:diet_app/Datasets/DailyDiet.dart';
import 'package:flutter/material.dart';

class LowCost extends StatefulWidget {
  const LowCost({Key? key}) : super(key: key);

  @override
  _LowCostState createState() => _LowCostState();
}

class _LowCostState extends State<LowCost> {
  @override
  void initState() {
    GetDailyDietData.refreshdata(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                                ],
                              ),
                              Text("0 of 467 cal"),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        breakfastColumn(GetDailyDietData.fooddata)
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
                                  Text("Lunch"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              Text("0 of 467 cal"),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        LunchColumn(GetDailyDietData.fooddata)
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
                                ],
                              ),
                              Text("0 of 467 cal"),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        dinnerColumn(GetDailyDietData.fooddata)
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }

  Column breakfastColumn(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(bfrow(element.breakfast, element.id));
        d.add(SizedBox(
          height: 20,
        ));
      });
    });
    return Column(
      children: d,
    );
  }

  Column LunchColumn(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(bfrow(element.lunch, element.id));
        d.add(SizedBox(
          height: 20,
        ));
      });
    });
    return Column(
      children: d,
    );
  }

  Column dinnerColumn(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(bfrow(element.dinner, element.id));
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
  Column bfrow(Map breakfast, id) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(breakfast['food2']),
                  SizedBox(
                    height: 8,
                  ),
                  Text('(' + "100g" + ')')
                ],
              ),
            ),
            Text(breakfast['calories2'].toString()),
            Container(
              width: 60,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.arrow_circle_up_outlined,
                        color: Colors.black,
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
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.arrow_circle_down_outlined,
                        color: Colors.black,
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
        ),
        breakfast['food2a'] != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(breakfast['food2a']),
                        SizedBox(
                          height: 8,
                        ),
                        Text('(' + "100g" + ')')
                      ],
                    ),
                  ),
                  Text(breakfast['calories2a'].toString()),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.arrow_circle_up_outlined,
                              color: Colors.black,
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
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.arrow_circle_down_outlined,
                              color: Colors.black,
                            )),
                        Text("not (180)"),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                    ),
                  ),
                ],
              )
            : Container(),
        breakfast['food2b'] != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(breakfast['food2b']),
                        SizedBox(
                          height: 8,
                        ),
                        Text('(' + "100g" + ')')
                      ],
                    ),
                  ),
                  Text(breakfast['calories2b'].toString()),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.arrow_circle_up_outlined,
                              color: Colors.black,
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
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.arrow_circle_down_outlined,
                              color: Colors.black,
                            )),
                        Text("not (180)"),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                    ),
                  ),
                ],
              )
            : Container()
      ],
    );
  }
}
