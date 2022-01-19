import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  _notesState createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          elevation: 8,
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('add notes'),
              PopupMenuButton(
                  color: Colors.white,
                  offset: Offset(-50, 100),
                  icon: Icon(Icons.save),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Column(children: [
                          Container(
                              width: 200,
                              child: Text("Are u sure you want to save this?")),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Yes ',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                        style: TextStyle(
                                          color: Colors.teal,
                                        ))),
                                SizedBox(width: 10),
                                RichText(
                                    text: TextSpan(
                                        text: 'No ',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                        style: TextStyle(
                                          color: Colors.teal,
                                        ))),
                              ],
                            ),
                          ),
                        ]))
                      ]),
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: ListView(children: [
        Container(
          height: 400,
          width: 500,
          child: Text("Add any notes"),
        ),
      ]),
    );
  }
}
