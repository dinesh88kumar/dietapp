// ignore_for_file: unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/diet_plan/diet.dart';
import 'package:diet_app/foodsdata/foodsdata.dart';
import 'package:diet_app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Search extends SearchDelegate {
  String time;
  Search(this.time);
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    Map fooddata = {};
    FoodList.foodlist.forEach((element) {
      fooddata.addAll({
        element.foodname: [element.calories, element.grams]
      });
    });
    final suggestions = fooddata.entries.where((name) {
      return name.key.toLowerCase().contains(query.toLowerCase());
    });
    if (query != null && fooddata.entries.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No results found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    Map fooddata = {};
    FoodList.foodlist.forEach((element) {
      fooddata.addAll({
        element.foodname: [element.calories, element.grams]
      });
    });
    final suggestions = fooddata.entries.where((name) {
      return name.key.toLowerCase().contains(query.toLowerCase());
    });

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            suggestions.elementAt(index).key,
          ),
          onTap: () {
            var now = new DateTime.now();

            var formatter = new DateFormat('dd-MM-yyyy');

            String formattedDate = formatter.format(now);

            print(formattedDate);
            query = suggestions.elementAt(index).key;
            FirebaseFirestore.instance
                .collection('Diet_app_users')
                .doc('userid')
                .collection(time)
                .add({
              'Date': formattedDate,
              'foodname': suggestions.elementAt(index).key,
              'calories': suggestions.elementAt(index).value[0],
              'grams': suggestions.elementAt(index).value[1]
            });
            print(suggestions.elementAt(index).key);
            print(suggestions.elementAt(index).value[0]);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyNavigationBar()));
          },
        );
      },
    );
  }
}
