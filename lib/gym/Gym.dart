import 'package:diet_app/Chat/chatUsers.dart';
import 'package:diet_app/gym/gymFirebase.dart';
import 'package:diet_app/gym/gymMembers.dart';
import 'package:diet_app/ui%20samples/myapp1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int _index = 0;

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  _GymState createState() => _GymState();
}

class _GymState extends State<Gym> {
  @override
  void initState() {
    setState(() {
      GymData.refreshdata(this);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Gym',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              Row(
                children: [
                  Text('•',
                      style: TextStyle(color: Color(0xff00ffb2), fontSize: 20)),
                  SizedBox(width: 8),
                  Text('open',
                      style: TextStyle(color: Colors.black, fontSize: 13.5)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                    "https://th.bing.com/th/id/OIP.Kg4DgheaRWPh5x4W3XXwRAHaD4?pid=ImgDet&rs=1")),
          ),
          SizedBox(
            height: 22,
          ),
          Text('Sector 1',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          gymList(),
          SizedBox(
            height: 40,
          ),
          Text('Sector 2',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          gymList(),
          SizedBox(
            height: 40,
          ),
          Text('Sector 3',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          gymList(),
        ],
      )),
    );
  }

  Container gymList() {
    return Container(
        height: 150,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GymCardsRow(GymData.gymdata)));
  }

  Row GymCardsRow(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        print(element.Name + "here comes");
        d.add(GymMethod(element.Name, element.id));
        d.add(SizedBox(
          width: 20,
        ));
      });
    });
    return Row(
      children: d,
    );
  }

  GestureDetector GymMethod(var Name, var id) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GymMembers(id: id, name: Name)));
        },
        child: Card(
            child: Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  opacity: 25,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.m9k_drYWaJUwm-XKjSAbRwHaFP?pid=ImgDet&rs=1"))),
          child: Center(
              child: Text(
            Name,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          )),
        )),
      );
}
