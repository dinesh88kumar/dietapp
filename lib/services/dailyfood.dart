import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GetDailyFoodData {
  static List<GetDailyFood> breakfast = [];
  static List<GetDailyFood> lunch = [];
  static List<GetDailyFood> dinner = [];
  static List<GetDailyFood> snack = [];
  static refreshdata(State s) async {
    List<GetDailyFood> breakfast1 = [];
    List<GetDailyFood> lunch1 = [];
    List<GetDailyFood> dinner1 = [];
    List<GetDailyFood> snack1 = [];

    s.setState(() {
      breakfast1.clear();
      lunch1.clear();
      dinner1.clear();
      snack1.clear();
    });
    var now = new DateTime.now();

    var formatter = new DateFormat('dd-MM-yyyy');

    String formattedDate = formatter.format(now);
    QuerySnapshot snapbreakfast = await FirebaseFirestore.instance
        .collection('Diet_app_users')
        .doc('userid')
        .collection('breakfast')
        .where('Date', isEqualTo: formattedDate)
        .get();

    snapbreakfast.docs.forEach((element) {
      breakfast1.add(GetDailyFood(element.get('foodname'),
          element.get('calories'), element.get('grams'), element.id));
    });
    QuerySnapshot snaplunch = await FirebaseFirestore.instance
        .collection('Diet_app_users')
        .doc('userid')
        .collection('lunch')
        .where('Date', isEqualTo: formattedDate)
        .get();

    snaplunch.docs.forEach((element) {
      lunch1.add(GetDailyFood(element.get('foodname'), element.get('calories'),
          element.get('grams'), element.id));
    });
    QuerySnapshot snapdinner = await FirebaseFirestore.instance
        .collection('Diet_app_users')
        .doc('userid')
        .collection('dinner')
        .where('Date', isEqualTo: formattedDate)
        .get();

    snapdinner.docs.forEach((element) {
      dinner1.add(GetDailyFood(element.get('foodname'), element.get('calories'),
          element.get('grams'), element.id));
    });
    QuerySnapshot snapsnack = await FirebaseFirestore.instance
        .collection('Diet_app_users')
        .doc('userid')
        .collection('snack')
        .where('Date', isEqualTo: formattedDate)
        .get();

    snapsnack.docs.forEach((element) {
      snack1.add(GetDailyFood(element.get('foodname'), element.get('calories'),
          element.get('grams'), element.id));
    });

    s.setState(() {
      breakfast.clear();

      breakfast.addAll(breakfast1);
      lunch.clear();
      lunch.addAll(lunch1);
      dinner.clear();
      dinner.addAll(dinner1);
      snack.clear();
      snack.addAll(snack1);
    });
  }
}

class GetDailyFood {
  late String foodname;
  late int calories;
  late int grams;
  late String foodid;
  GetDailyFood(this.foodname, this.calories, this.grams, this.foodid);
}
