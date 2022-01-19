import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
            children: const [
              Text('settings'),
              Icon(Icons.notifications, size: 24, color: Colors.black)
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: Column(
        children: [
          Container(
              height: 40,
              width: 400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Row(
                children: [
                  Text("About"),
                  SizedBox(width: 200),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right_sharp))
                ],
              )),
          Container(
              height: 40,
              width: 400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Row(
                children: [
                  Text("privacy center"),
                  SizedBox(width: 200),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right_sharp))
                ],
              )),
          Container(
              height: 40,
              width: 400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Row(
                children: [
                  Text("FAQ's / Report"),
                  SizedBox(width: 200),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right_sharp))
                ],
              )),
          Container(
              height: 40,
              width: 400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: Row(
                children: [
                  Text("contact support"),
                  SizedBox(width: 200),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right_sharp))
                ],
              )),
          Container(
            height: 40,
            width: 400,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black26)),
            child: Row(
              children: [
                Text("Delete Account"),
                SizedBox(width: 200),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_sharp))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
