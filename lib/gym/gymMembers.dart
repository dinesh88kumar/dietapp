import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/Chat/chatRoom.dart';
import 'package:diet_app/Chat/chatUsers.dart';
import 'package:diet_app/Chat/data.dart';
import 'package:diet_app/gym/GymUsers.dart';
import 'package:flutter/material.dart';

class GymMembers extends StatefulWidget {
  dynamic id, name;
  GymMembers({required this.id, required this.name});

  @override
  State<GymMembers> createState() => _GymMembersState();
}

class _GymMembersState extends State<GymMembers> {
  @override
  void initState() {
    setState(() {
      GymUsersData.refreshdata(this, widget.id);
    });
    super.initState();
  }

  String generateRandomString(int length) {
    final _random = Random();
    const _availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();

    return randomString;
  }

  createRoom(String id, String Name) {
    var a = generateRandomString(25);

    FirebaseFirestore.instance
        .collection('users')
        .doc('Chats')
        .collection(generateRandomString(25))
        .add({"Company": "welcome to"});
    FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('chats')
        .add({
      "Roomid": a,
      "username": Username,
      "userid": Userid,
    });
    FirebaseFirestore.instance
        .collection('users')
        .doc(Userid)
        .collection('chats')
        .add({
      "Roomid": a,
      "username": Name,
      "userid": id,
    });
    FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('chats')
        .add({
      "Roomid": a,
      "username": Username,
      "userid": Userid,
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChatUsers()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.name),
              Text('M'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MembersCoulmn(GymUsersData.userdata),
          ],
        ),
      ),
    );
  }

  Column MembersCoulmn(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(membersList(element.Name, element.id));
        d.add(SizedBox(
          height: 10,
        ));
      });
    });
    return Column(
      children: d,
    );
  }

  Container membersList(var Name, var id) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Container(color: Colors.amber),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Userid == id
                            ? Text("MySelf")
                            : Text(
                                Name,
                                style: TextStyle(fontSize: 16),
                              ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'widget.messageText',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight:
                                  false ? FontWeight.bold : FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (Userid == id) {
                print("its u");
              } else {
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc(Userid)
                    .collection('chats')
                    .where('userid', isEqualTo: id)
                    .get()
                    .then((value) => value.size > 0
                        ? print("yes here it is")
                        : createRoom(id, Name));
              }
              /////a
              // FirebaseFirestore.instance
              //     .collection('users')
              //     .doc(Userid)
              //     .collection('chats')
              //     .doc(id)
              //     .set({"chatInitiated": 1});
              // FirebaseFirestore.instance
              //     .collection('users')
              //     .doc(Userid)
              //     .collection('chats')
              //     .doc(id)
              //     .collection('messages')
              //     .add({"msg": " "});
            },
            child: Text(
              'Chat',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: true ? FontWeight.bold : FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
