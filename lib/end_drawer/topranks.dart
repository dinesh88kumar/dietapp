import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class topranks extends StatefulWidget {
  const topranks({Key? key}) : super(key: key);

  @override
  _topranksState createState() => _topranksState();
}

class _topranksState extends State<topranks> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 300,
          width: 500,
          child: ListView(children: [
            Column(
              children: [
                Text("jan 2019"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 28,
                                    child: Text(
                                      'weight gain',
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 12),
                                    )),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 28,
                                    child: Text(
                                      'maintenance weight',
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 12),
                                    )),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Container(
                                      width: 28,
                                      child: Text(
                                        'weight loss',
                                        maxLines: 2,
                                        style: TextStyle(fontSize: 12),
                                      )),
                                  onTap: () {},
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                  children: [
                    Text("S.no",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("Name ",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("Rank",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("Place,city",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("Weight Gained",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
                Row(
                  children: [
                    Text("1",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("siva ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("1",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("e.pudur,trichy",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("4",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
                Row(
                  children: [
                    Text("2",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("sagu",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("2",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("koyambedu, chennai",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Text("3.8",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500))
                  ],
                ),
                Row(
                  children: [
                    Text("3",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 15),
                    Text("gane ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 15),
                    Text("3",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 15),
                    Text("k.knagar,trichy",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    SizedBox(width: 15),
                    Text("3.6",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ],
    ));
  }
}
