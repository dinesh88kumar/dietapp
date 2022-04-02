import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: GestureDetector(
        onTap: () {
          final _storage = GetStorage();
          _storage.remove("name");
          _storage.remove("uid");
        },
        child: Text("logout"),
      ),
    ));
  }
}
