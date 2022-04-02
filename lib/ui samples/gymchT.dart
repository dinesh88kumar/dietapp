// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gymchT extends StatefulWidget {
  const gymchT({Key? key}) : super(key: key);

  @override
  State<gymchT> createState() => _gymchTState();
}

class _gymchTState extends State<gymchT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Rockfort"),
        backgroundColor: Color(0xffb0fc38),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: InkWell(
                    child: Container(
                      height: 80,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffb0fc38),
                          ),
                          SizedBox(width: 80),
                          Column(
                            children: [
                              Text(
                                "Kumar",
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
                          SizedBox(width: 130),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 40,
                              child: Text(
                                "Chat",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    onDoubleTap: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: InkWell(
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffb0fc38),
                        ),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Kumar",
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
                        SizedBox(width: 130),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 40,
                            child: Text(
                              "Chat",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
