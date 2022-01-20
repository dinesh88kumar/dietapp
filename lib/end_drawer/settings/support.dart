import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class support extends StatefulWidget {
  const support({Key? key}) : super(key: key);

  @override
  _supportState createState() => _supportState();
}

class _supportState extends State<support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              height: 120,
              width: 250,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  Text("If there is any queries contact us through"),
                  Container(
                    height: 40,
                    width: 80,
                    child: RichText(
                        text: TextSpan(
                            text: 'Email ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                              color: Colors.teal,
                            ))),
                  ),
                ],
              ),
            ),
            Text("Some queries"),
            Container(
              height: 120,
              width: 250,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  Text("My Account was diabled "),
                  Container(
                    height: 40,
                    width: 80,
                    child: RichText(
                        text: TextSpan(
                            text: 'Send ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                              color: Colors.teal,
                            ))),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 250,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  Text("I cant see my calories history"),
                  Container(
                    height: 40,
                    width: 80,
                    child: RichText(
                        text: TextSpan(
                            text: 'send ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                              color: Colors.teal,
                            ))),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 250,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  Text("Coupon code is not working"),
                  Container(
                    height: 40,
                    width: 80,
                    child: RichText(
                        text: TextSpan(
                            text: 'send ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                              color: Colors.teal,
                            ))),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 250,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Column(
                children: [
                  Text("My workout calories is not visible"),
                  Container(
                    height: 40,
                    width: 80,
                    child: RichText(
                        text: TextSpan(
                            text: 'send ',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                              color: Colors.teal,
                            ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
