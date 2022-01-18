import 'package:diet_app/diet_plan/DietPlan.dart';
import 'package:diet_app/exercise/Exercise.dart';
import 'package:diet_app/places/Places.dart';
import 'package:diet_app/recipes/Recipes.dart';
import 'package:diet_app/userdata/UsersData.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD6dC1Ng2f6wH52_Pij0sp5KjDf3iY85oY",
          authDomain: "restaurant-2815b.firebaseapp.com",
          databaseURL: "https://restaurant-2815b-default-rtdb.firebaseio.com",
          projectId: "restaurant-2815b",
          storageBucket: "restaurant-2815b.appspot.com",
          messagingSenderId: "1092249724059",
          appId: "1:1092249724059:web:3966b29623d3338374523e",
          measurementId: "G-BLXG5H621H"));
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var name;
  void initState() {
    setState(() {
      final _storage = GetStorage();
      name = _storage.read('name');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyNavigationBar();
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DietPlan(),
    Exercises(),
    Recipes(),
    Places()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // static List<Widget> _widget = <Widget>[
  //   AnimatedTextKit(
  //     animatedTexts: [
  //       ColorizeAnimatedText(
  //         'OFF CAMPUS DRIVES',
  //         textStyle: colorizeTextStyle,
  //         colors: colorizeColors,
  //       ),
  //       ColorizeAnimatedText(
  //         'OFF CAMPUS DRIVES',
  //         textStyle: colorizeTextStyle,
  //         colors: colorizeColors,
  //       ),
  //       ColorizeAnimatedText(
  //         'OFF CAMPUS DRIVES',
  //         textStyle: colorizeTextStyle,
  //         colors: colorizeColors,
  //       ),
  //     ],
  //     isRepeatingAnimation: true,
  //     onTap: () {
  //       print("Tap Event");
  //     },
  //   ),
  //   Text('INTERNSHIPS',
  //       style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black))),
  //   Text('TECH NEWS',
  //       style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black))),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          elevation: 8,
          toolbarHeight: 60,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('title'),
              Icon(Icons.notifications, size: 24, color: Colors.black)
            ],
          ),
          backgroundColor: Colors.tealAccent),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.briefcase,
                color: _selectedIndex == 0 ? Colors.tealAccent : Colors.black,
              ),
              title: Text('Diet'),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.boxOpen,
                color: _selectedIndex == 1 ? Colors.tealAccent : Colors.black,
              ),
              title: Text('excersise'),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.newspaper,
                color: _selectedIndex == 2 ? Colors.tealAccent : Colors.black,
              ),
              title: Text('Places'),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.newspaper,
                color: _selectedIndex == 3 ? Colors.tealAccent : Colors.black,
              ),
              title: Text('Recipes'),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 21,
          onTap: _onItemTapped,
          elevation: 0),
      endDrawer: Drawer(),
    );
  }
}

const colorizeColors = [
  Colors.black,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.black,
];

const colorizeTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Poppins',
);
