import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/Chat/data.dart';
import 'package:diet_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

abstract class ConsoleAuth {
  static UserCredential? currentUser = null;
  static FirebaseAuth auth = FirebaseAuth.instance;
  static initAuth() {
    // auth.setPersistence(Persistence.SESSION);
  }

  static signin(
      String email, String password, BuildContext context, State s) async {
    auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      currentUser = value;
      if (currentUser != null) {
        final _storage = GetStorage();

        _storage.write("uid", currentUser!.user!.uid);
        String n;
        final doc = await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser!.user!.uid)
            .get();
        s.setState(() {
          n = doc['Name'];
          print("see the name and validate" + n);
          _storage.write("name", n.toString());
        });

        print(currentUser!.user!.uid + "sign in name");

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      }
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text(e.toString())));
    });
  }
}
