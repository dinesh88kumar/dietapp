import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final _storage = GetStorage();

String Username = _storage.read('name');
String Userid = _storage.read("uid");
