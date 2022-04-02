import 'package:diet_app/ui%20samples/chaticon.dart';
import 'package:diet_app/ui%20samples/gymchT.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.notifications),
            SizedBox(width: 30),
            Icon(Icons.menu),
          ],
          backgroundColor: Color(0xffb0fc38),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 20),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffb0fc38)),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            "data_1",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 70),
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffb0fc38)),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            "data_2",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chaticon()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Color(0xffb0fc38))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 10),
                          child: Text("4 *"),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text(
                            "Fitness gym",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                "Time :",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "5.00 _ 12.00 P.M ",
                                style: GoogleFonts.averageSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                              Text("|", style: TextStyle(color: Colors.white)),
                              Text(
                                " 4.00 _ 10.00 P.M",
                                style: GoogleFonts.averageSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                "Price : ",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Text(
                                " 1Mo - 800 ",
                                style: GoogleFonts.averageSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                              Text("|", style: TextStyle(color: Colors.white)),
                              Text(
                                " 3Mo - 1500 ",
                                style: GoogleFonts.averageSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                              Text("|", style: TextStyle(color: Colors.white)),
                              Text(" 1Yr - 4000 ",
                                  style: GoogleFonts.averageSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                "Members : ",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Text(
                                "170",
                                style: GoogleFonts.averageSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => gymchT()));
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(color: Color(0xffb0fc38)),
                      child: (null)),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        "sector 1",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffb0fc38)),
                      ),
                      Text("kk nagar, manarupuram, tolgate",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffb0fc38)),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffb0fc38)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(color: Color(0xffb0fc38)),
                      child: (null)),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        "sector 2",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffb0fc38)),
                      ),
                      Text("E.pudur, Crawford , ramachandra nagar",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffb0fc38)),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffb0fc38)),
                  ),
                ],
              )
            ],
          ),
        ]));
  }
}
