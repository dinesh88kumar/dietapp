// ignore_for_file: unnecessary_null_comparison

import 'package:diet_app/foodsdata/foodsdata.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "android",
    "windows",
    "mac",
    "linux",
    "parrotOS",
    "mint"
  ];

  // List<String> recentSearch = [
  //   "Android",
  //   "Windows",
  //   "Mac",
  // ];

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
    if (query != null && data.contains(query.toLowerCase())) {
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
            query = suggestions.elementAt(index).key;
            print(suggestions.elementAt(index).key);
          },
        );
      },
    );
  }
}
