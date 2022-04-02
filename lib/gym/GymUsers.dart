import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GymUsersData {
  static List<UserInfo> userdata = [];

  static refreshdata(State s, String id) async {
    List<UserInfo> userdata1 = [];

    s.setState(() {
      userdata1.clear();
    });
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection('Gyms')
        .doc(id)
        .collection("Users")
        .get();

    snap.docs.forEach((element) {
      userdata1.add(UserInfo(element.get('Name'), element.id));
    });

    s.setState(() {
      userdata.clear();

      userdata.addAll(userdata1);
    });
  }
}

class UserInfo {
  String Name;
  String id;
  UserInfo(this.Name, this.id);
}
