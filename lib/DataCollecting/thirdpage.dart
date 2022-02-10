import 'package:flutter/material.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  _thirdpageState createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("How active you are ?"),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 50,
            width: 290,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.chair_alt_rounded),
                ),
                Column(
                  children: [
                    Text("Little or no activity"),
                    SizedBox(width: 10),
                    Container(
                      width: 230,
                      child: Text(
                          "mostly sitting through the day (eg: Desk Job ,bankteller) "),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 50,
            width: 290,
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.male),
                ),
                Column(
                  children: [
                    Text("Lightly Active"),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      child: Text(
                          "mostly standing through  the day (eg: SAles Associate Teacher) "),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 50,
            width: 290,
            child: Row(
              children: [
                Container(child: Icon(Icons.directions_walk)),
                Column(
                  children: [
                    Text("Moderately Active"),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      child: Text(
                          "mostly Walking or doing  physical Activities through the day (eg: Tour Guide ,Waiter) "),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 50,
            width: 290,
            child: Row(
              children: [
                Container(child: Icon(Icons.construction_outlined)),
                Column(
                  children: [
                    Text("Very Active"),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      child: Text(
                          "mostly  doing heavy  physical Activities through the day (eg: Construction Worker) "),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            child: Container(
              height: 20,
              width: 30,
              child: Text("< Back"),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
