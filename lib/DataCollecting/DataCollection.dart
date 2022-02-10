import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UserData {
  static List userData = [];

  static refreshdata(State s) async {
    List UserData1 = [];
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection('Diet_app_users')
        .doc('userid')
        .collection('breakfast')
        .get();

    snap.docs.forEach((element) {
      UserData1.add(DataofUsers(
        element.get('foodname'),
      ));
    });
    s.setState(() {
      userData.clear();
      userData.addAll(UserData1);
    });
  }
}

class DataofUsers {
  late String StartDate;

  DataofUsers(this.StartDate);
}
