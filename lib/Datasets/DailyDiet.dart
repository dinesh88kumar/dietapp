import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetDailyDietData {
  static List<GetDailyDiet> fooddata = [];

  static refreshdata(State s) async {
    List<GetDailyDiet> fooddata1 = [];

    s.setState(() {
      fooddata1.clear();
    });
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection('diets_collection')
        .doc('level4')
        .collection('day2')
        .get();

    snap.docs.forEach((element) {
      fooddata1.add(GetDailyDiet(element.get('Day'), element.get('breakfast'),
          element.get('lunch'), element.get('dinner'), element.id));
    });

    s.setState(() {
      fooddata.clear();

      fooddata.addAll(fooddata1);
    });
  }
}

class GetDailyDiet {
  late String Day;
  late Map breakfast;
  late Map lunch;
  late Map dinner;
  late String id;

  GetDailyDiet(this.Day, this.breakfast, this.lunch, this.dinner, this.id);
}

class TypeDecode {
  late String food1;
  late String food2;
  late String food3;
  late var calories;
  TypeDecode(this.food1, this.food2, this.food3, this.calories);
}
