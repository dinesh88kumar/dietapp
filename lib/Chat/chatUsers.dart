import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/Chat/chatRoom.dart';
import 'package:diet_app/Chat/data.dart';

import 'package:flutter/material.dart';

class ChatUsers extends StatefulWidget {
  const ChatUsers({Key? key}) : super(key: key);

  @override
  State<ChatUsers> createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  @override
  void initState() {
    setState(() {
      ChatsContactData.refreshdata(this);
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 1,
        title: Container(
          child: Row(
            children: [Text("ChatApp")],
          ),
        ),
      ),
      body: SafeArea(child: chatUsers(ChatsContactData.chatdata)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () {
          // Respond to button press
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListView chatUsers(List data) {
    List<Widget> d = [];
    setState(() {
      data.forEach((element) {
        d.add(userContainer(element.name, element.id, element.roomid));
        d.add(SizedBox(
          height: 20,
        ));
      });
    });
    return ListView(
      children: d,
    );
  }

  GestureDetector userContainer(var name, var id, var roomid) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatRoom(
                      id: id,
                      name: name,
                      roomid: roomid,
                    )));
      },
      child: Container(
          padding: EdgeInsets.all(15),
          child: Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text('online',
                    style: TextStyle(color: Color(0xff00ffb2), fontSize: 12)),
              ],
            )
          ])),
    );
  }
}

class ChatsContactData {
  static List<ChatsContact> chatdata = [];

  static refreshdata(State s) async {
    List<ChatsContact> chatdata1 = [];

    s.setState(() {
      chatdata1.clear();
    });
    QuerySnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(Userid)
        .collection('chats')
        .get();

    snap.docs.forEach((element) {
      chatdata1.add(ChatsContact(element.get('username'), element.get('userid'),
          element.get('Roomid')));
    });

    s.setState(() {
      chatdata.clear();

      chatdata.addAll(chatdata1);
    });
  }
}

class ChatsContact {
  String name;
  String id;
  String roomid;
  ChatsContact(this.name, this.id, this.roomid);
}
