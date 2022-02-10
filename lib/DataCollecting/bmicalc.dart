import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  Map PhysicalLevel = {
    'sedentary': 1.2,
    'lightactive': 1.375,
    'moderatelyactive': 1.55,
    'veryactive': 1.725,
    'extraactive': 1.9
  };

  String gender = 'female';
  var age = 34, weight = 65, height = 159;
  var bmr;
  @override
  Widget build(BuildContext context) {
    print(PhysicalLevel['sedentary']);
    if (gender == 'male') {
      bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    }
    if (gender == 'female') {
      bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    } else {
      print('not updated');
    }
    return Scaffold(
        body: SafeArea(
      child: Center(child: Container(child: Text(bmr.toString()))),
    ));
  }
}
