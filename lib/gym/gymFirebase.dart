import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GymData {
  static List<GymInfo> gymdata = [];

  static refreshdata(State s) async {
    List<GymInfo> gymdata1 = [];

    s.setState(() {
      gymdata1.clear();
    });
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection('Gyms')
        .where("sector", isEqualTo: 1)
        .get();

    snap.docs.forEach((element) {
      gymdata1.add(GymInfo(element.get('Name'), element.id));
    });

    s.setState(() {
      gymdata.clear();

      gymdata.addAll(gymdata1);
    });
  }
}

class GymInfo {
  String Name;
  String id;
  GymInfo(this.Name, this.id);
}
// class GymInfo {
//   String users;
//   String userid;
//   GymInfo(this.users,this.userid);
// }