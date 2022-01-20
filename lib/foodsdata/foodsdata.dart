import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FoodList {
  static List foodlist = [];

  static refreshdata(State s) async {
    List foodlist1 = [];
    DataSnapshot snap = await FirebaseDatabase.instance.ref('foodItems').get();

    snap.children.forEach((element) {
      foodlist1.add(Foods(element.child('foodName').value.toString(),
          element.child('calories').value, element.child('grams').value));
      print(foodlist1);
    });
    s.setState(() {
      foodlist.clear();
      foodlist.addAll(foodlist1);
    });
  }
}

class Foods {
  late String foodname;
  late var calories;
  late var grams;
  Foods(this.foodname, this.calories, this.grams);
}
