import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('diet plans'),
      ),
    );
  }
}
