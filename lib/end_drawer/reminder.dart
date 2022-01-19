import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reminder extends StatefulWidget {
  const reminder({Key? key}) : super(key: key);

  @override
  _reminderState createState() => _reminderState();
}

class _reminderState extends State<reminder> {
  bool _value = false;
  bool _value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            elevation: 8,
            toolbarHeight: 60,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Edit profile'),
                Icon(Icons.notifications, size: 24, color: Colors.black)
              ],
            ),
            backgroundColor: Colors.tealAccent),
        body: Column(
          children: [
            Text("Reminder",
                style: GoogleFonts.dmSans(
                    fontSize: 30, fontWeight: FontWeight.w500)),
            Row(
              children: [
                const Text("Enable Reminder"),
                Switch(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ],
            ),
            const Text("Reminder Time"),
            Row(
              children: [
                Column(
                  children: [
                    const Text("BreakFast"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            SizedBox(width: 50),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    const Text("morning snack"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Text("Lunch"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    const Text("Evening snack"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Text("Dinner"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    const Text("water"),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_up)),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                  child: const Icon(Icons.arrow_drop_down)),
                              onTap: () {},
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
            const Text("Trackers"),
            Row(
              children: [
                const Text("Google Fit"),
                SizedBox(width: 100),
                InkWell(
                  child: Container(
                    height: 30,
                    width: 50,
                    child: Text("Install"),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ],
        ));
  }
}
