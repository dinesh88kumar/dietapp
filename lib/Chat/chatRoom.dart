import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/Chat/data.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  String id, name, roomid;
  ChatRoom({required this.id, required this.name, required this.roomid});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  void callEmoji() {
    print('Emoji Icon Pressed...');
  }

  void callAttachFile() {
    print('Attach File Icon Pressed...');
  }

  void sendMessages() {}

  void callCamera() {
    print('camera Icon Pressed...');
  }

  List<QueryDocumentSnapshot> listMessage = [];
  Widget moodIcon() {
    return IconButton(
        icon: const Icon(
          Icons.mood,
          color: Color(0xFF00BFA5),
        ),
        onPressed: () => callEmoji());
  }

  Widget attachFile() {
    return IconButton(
      icon: const Icon(Icons.attach_file, color: Color(0xFF00BFA5)),
      onPressed: () => callAttachFile(),
    );
  }

  Widget camera() {
    return IconButton(
      icon: const Icon(Icons.photo_camera, color: Color(0xFF00BFA5)),
      onPressed: () => callCamera(),
    );
  }

  TextEditingController _controller = TextEditingController();
  Widget sendIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          FirebaseFirestore.instance
              .collection('users')
              .doc('Chats')
              .collection(widget.roomid)
              .add({
            'messages': _controller.text,
            "time": DateTime.now(),
            "bywho": Username
          });
          _controller.clear();
        });
      },
      child: const Icon(
        Icons.send_outlined,
        color: Colors.white,
      ),
    );
  }

  final ScrollController listScrollController =
      ScrollController(initialScrollOffset: 20);

  @override
  void initState() {
    print(Username + "here is uid" + Userid.toString());
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   listScrollController.animateTo(
    //       listScrollController.position.maxScrollExtent,
    //       duration: Duration(milliseconds: 1),
    //       curve: Curves.ease);
    // });
    // if (listScrollController.hasClients) {
    //   listScrollController.animateTo(
    //       listScrollController.position.maxScrollExtent,
    //       duration: Duration(seconds: 1),
    //       curve: Curves.ease);
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            elevation: 8,
            toolbarHeight: size.height * 0.08,
            iconTheme: IconThemeData(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text('online',
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.call, size: 24, color: Colors.black),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.more, size: 24, color: Colors.black),
                  ],
                )
              ],
            ),
            backgroundColor: Colors.tealAccent),
        body: SafeArea(
            child: Container(
                child: Column(
          children: [
            Container(
              height: size.height * 0.77,
              color: Colors.grey.shade100,
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc('Chats')
                    .collection(widget.roomid)
                    .orderBy('time', descending: false)
                    .snapshots(),
                builder: (BuildContext con, AsyncSnapshot snap) {
                  if (!snap.hasData) {
                    // ignore: prefer_const_constructors
                    return Center(
                      // ignore: prefer_const_constructors
                      child: CircularProgressIndicator(
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.pink),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      controller: listScrollController,
                      itemCount: snap.data.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot msg = snap.data.docs[index];
                        return Msg(
                            message: msg['messages'], bywho: msg['bywho']);
                      },
                    );
                  }
                },
              ),
            ),
            Container(
                height: size.height * 0.15,
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 7,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: [
                              moodIcon(),
                              Flexible(
                                child: TextFormField(
                                  controller: _controller,
                                  decoration: InputDecoration(
                                      hintText: "Message",
                                      hintStyle:
                                          TextStyle(color: Color(0xFF00BFA5)),
                                      border: InputBorder.none),
                                ),
                              ),
                              attachFile(),
                              camera(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                            color: Color(0xFF00BFA5), shape: BoxShape.circle),
                        child: InkWell(
                          child: sendIcon(),
                          onTap: () => sendMessages(),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ))));
  }
}

class Msg extends StatefulWidget {
  String bywho;
  String message;
  Msg({required this.message, required this.bywho});

  @override
  State<Msg> createState() => _MsgState();
}

class _MsgState extends State<Msg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Align(
          alignment:
              Username != widget.bywho ? Alignment.topLeft : Alignment.topRight,
          child: Container(
              height: 30,
              child: Card(
                color: Username != widget.bywho ? Colors.amber : Colors.green,
                child: Text(widget.message),
              )),
        ),
      ],
    );
  }
}
