import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class UsersData extends StatefulWidget {
  const UsersData({Key? key}) : super(key: key);

  @override
  _UsersDataState createState() => _UsersDataState();
}

class _UsersDataState extends State<UsersData> {
  var name;
  final _storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                name = val;
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _storage.write('name', 'dinesh');
                });
              },
              child: Text('press'),
            )
          ],
        ),
      ),
    );
  }
}
