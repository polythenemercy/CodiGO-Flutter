import 'package:codigo_semana7_whatsapp/data/dummy_data.dart';
import 'package:codigo_semana7_whatsapp/models/chat_message_model.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {

  String messageContent = "";
  String messageType = "me";
  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/3962288/pexels-photo-3962288.jpeg",
              ),
              backgroundColor: Colors.white10,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "Last seen Today 13:34 p.m.",
                    style: TextStyle(fontSize: 14.0, color: Colors.white60),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black.withOpacity(0.09),
          ),

          ListView.builder(
            itemCount: chatMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatMessageList[index].messageType == 'me' ? Alignment.topRight : Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0,),
                  margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0,),
                  decoration: BoxDecoration(
                    color: chatMessageList[index].messageType == 'me' ? Color(0xffE3FFC4) : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0),
                      topRight: chatMessageList[index].messageType == 'me' ? Radius.circular(0.0) : Radius.circular(14.0),
                      topLeft: chatMessageList[index].messageType == 'me' ? Radius.circular(14.0) : Radius.circular(0.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          offset: const Offset(4, 4),
                          blurRadius: 10.0
                      ),
                    ],
                  ),
                  child: Text(
                    chatMessageList[index].messageContent,
                  ),
                ),
              );
          }),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        hintText: "Type message",
                        hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt,
                          size: 30.0,
                          color: Colors.black45,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            )
                          ],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      chatMessageList.add(ChatMessageModel(messageContent: myController.text, messageType: messageType));
                      myController.clear();
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff008878),
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
