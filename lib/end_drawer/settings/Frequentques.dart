import 'package:flutter/material.dart';

class Frequentques extends StatefulWidget {
  const Frequentques({Key? key}) : super(key: key);

  @override
  _FrequentquesState createState() => _FrequentquesState();
}

class _FrequentquesState extends State<Frequentques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(
          child: ExpansionTile(
            /*   collapsedTextColor: Color(0xff00ffb2),*/
            textColor: Color(0xff00ffb2),
            iconColor: Color(0xff00ffb2),
            title: Text(
              "?",
            ),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(
                    height: 250,
                    width: 700,
                    child: Column(
                      children: [
                        Container(
                            width: 700,
                            child: Text(
                              "We value our customers time and hence moved away from a single customer care number to a comprehensive chat-based support system for quick and easy resolution. You no longer have to go through the maze of an IVRS call support. Just search for your issue in the help section on this page and initiate a chat with us. A customer care executive will be assigned to you shortly. You can also email us your issue on support@Boova.in Note: We value your privacy and your information is safe with us. Please do not reveal any personal information, bank account number, OTP etc. to another person. A Boova representative will never ask you for these details. Please do not reveal these details to fraudsters and imposters claiming to be calling on our behalf. Be vigilant and do not entertain phishing calls or emails.",
                              style: TextStyle(color: Colors.grey),
                            )),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffff9000))),
                          child: Text("Send us mail",
                              style: TextStyle(color: Color(0xff00ffb2))),
                        ),
                        Text("  we will respond you in 24 - 48 hours for sure")
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("I want to cancel my order"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          elevation: 80,
          child: ExpansionTile(
            title: Text("Can I change the address / number?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Unable to view the details in my profile"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Did not receive referral coupon?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Did not receive OTP?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Deactivate my account"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("I want to partner my team with Boova"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text(
                "What are the mandatory documents needed to list my team on Boova?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("How much commission will I be charged by Boova?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Who should I contact if I need help & support"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text(
                "After I submit all documents, how long will it take for my team to go live on Boova?"),
            children: [
              ListTile(
                  onTap: () {},
                  title: Container(height: 10, width: 10, color: Colors.amber)),
            ],
          ),
        ),
      ]),
    );
  }
}
