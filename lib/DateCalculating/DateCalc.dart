import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCalc {
  startDiet() {
    var now = new DateTime.now();

    var formatter = new DateFormat('dd-MM-yyyy');

    String formattedDate = formatter.format(now);

    FirebaseFirestore.instance
        .collection('affleck')
        .doc('2322')
        .set({'StartDate': formattedDate}, SetOptions(merge: true));
    String day1 = "22-03-2000";
    String day2 = "28-03-2000";
    var a = day1.split("-");
    print(a[0]);
  }

  CurrentDietDate() {}
  revokeDate() {}
}
