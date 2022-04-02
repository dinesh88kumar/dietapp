import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chaticon extends StatefulWidget {
  const chaticon({Key? key}) : super(key: key);

  @override
  State<chaticon> createState() => _chaticonState();
}

class _chaticonState extends State<chaticon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Chatapp"),
          backgroundColor: Color(0xffb0fc38),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 550,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                          radius: 25,
                        ),
                        SizedBox(width: 60),
                        Column(
                          children: [
                            Text(
                              "siva",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(
                              "last sent or received text",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: 150),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 550,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                          radius: 25,
                        ),
                        SizedBox(width: 60),
                        Column(
                          children: [
                            Text(
                              "siva",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(
                              "last sent or received text",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: 150),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 550,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                          radius: 25,
                        ),
                        SizedBox(width: 60),
                        Column(
                          children: [
                            Text(
                              "siva",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(
                              "last sent or received text",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: 150),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 550,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                          radius: 25,
                        ),
                        SizedBox(width: 60),
                        Column(
                          children: [
                            Text(
                              "siva",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(
                              "last sent or received text",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: 150),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add, color: Colors.black),
                backgroundColor: Color(0xffb0fc38),
              )
            ],
          )
        ]));
  }
}
