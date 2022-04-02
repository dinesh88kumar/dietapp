import 'package:get_storage/get_storage.dart';

final _storage = GetStorage();

String Username = _storage.read('name');
String Userid = _storage.read("uid");
