import 'package:diet_app/DataCollecting/secondpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("whats your name ?"),
        Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text("Enter your name"),
        ),
        SizedBox(height: 20),
        Text("Enter your Email Id"),
        Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text("Email Id"),
        ),
        SizedBox(height: 20),
        Text("Enter your Age"),
        Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text("Age"),
        ),
        SizedBox(height: 20),
        Text("what's your gender"),
        Row(
          children: [
            Container(
              height: 60,
              width: 110,
              child: Column(
                children: [
                  Icon(Icons.male),
                  Text("Male"),
                ],
              ),
            ),
            Container(
                height: 60,
                width: 110,
                child: Column(children: [Icon(Icons.female), Text("Female")])),
          ],
        ),
        SizedBox(height: 10),
        InkWell(
          child: Container(
            height: 20,
            width: 30,
            child: Text("Next >"),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => secondpage()));
          },
        )
      ]),
    );
  }
}
