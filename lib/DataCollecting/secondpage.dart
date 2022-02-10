import 'package:diet_app/DataCollecting/thirdpage.dart';
import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("What's your height ?"),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text("Height"),
          ),
          SizedBox(height: 20),
          Text("What's your weight ?"),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text("weight"),
          ),
          SizedBox(height: 20),
          Text("What's your  target weight ?"),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text(" target weight"),
          ),
          SizedBox(height: 20),
          Text("what's your gender"),
          Row(
            children: [
              Container(height: 60, width: 110, child: Text("Easy")),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 110,
                child: Text("Medium"),
              ),
              SizedBox(width: 10),
              Container(height: 60, width: 110, child: Text("hard")),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              InkWell(
                child: Container(
                  height: 20,
                  width: 90,
                  child: Text("< Back"),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 100),
              InkWell(
                child: Container(
                  height: 20,
                  width: 90,
                  child: Text("Next >"),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => thirdpage()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
