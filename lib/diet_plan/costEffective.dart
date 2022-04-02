import 'package:diet_app/Datasets/DailyDiet.dart';
import 'package:flutter/material.dart';

class CostEffective extends StatefulWidget {
  const CostEffective({Key? key}) : super(key: key);

  @override
  _CostEffectiveState createState() => _CostEffectiveState();
}

class _CostEffectiveState extends State<CostEffective> {
  @override
  void initState() {
    GetDailyDietData.refreshdata(this);
    // Map l = {'chicken': 230, 'parotta': 100, 'chapatti': 200, 'dosa': 120};

    // var a = 150;

    // List d = [0, 0];
    // var m = 100000;
    // for (int i = 0; i < l.length; i++) {
    //   for (int j = 0; j < l.length; j++) {
    //     print(l[i] + '' + l[j]);
    //     if (i != j) {
    //       if (l[i] + l[j] == a) {
    //         print("l");
    //       } else {
    //         var n = (l[i] - l[j]).abs();

    //         if (m > n) {
    //           m = n;
    //           d[0] = i;
    //           d[1] = j;
    //         }
    //       }
    //     }
    //   }
    // }

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
                  Text(breakfast['food1']),
                  SizedBox(
                    height: 8,
                  ),
                  Text('(' + "100g" + ')')
                ],
              ),
            ),
            Text(breakfast['calories'].toString()),
            Container(
              width: 40,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.info)),
              ),
            ),
          ],
        ),
        breakfast['food1a'] != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(breakfast['food1a']),
                        SizedBox(
                          height: 8,
                        ),
                        Text('(' + "100g" + ')')
                      ],
                    ),
                  ),
                  Text(breakfast['calories1a'].toString()),
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
        breakfast['food1b'] != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(breakfast['food1b']),
                        SizedBox(
                          height: 8,
                        ),
                        Text('(' + "100g" + ')')
                      ],
                    ),
                  ),
                  Text(breakfast['calories1b'].toString()),
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
