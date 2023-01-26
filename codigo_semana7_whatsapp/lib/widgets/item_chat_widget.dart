import 'package:codigo_semana7_whatsapp/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';
import '../models/chad_model.dart';

class ItemChatWidget extends StatelessWidget {

  ChatModel chatModel;

  ItemChatWidget({
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      child: ListTile(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetailPage())),
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(
            chatModel.avatarUrl,
          ),
        ),
        title: Text(
          chatModel.userName,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 13.0,
              color: chatModel.isTyping ? Color(0xff01C851) : Colors.black26
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: chatModel.countMessage > 0 ? Color(0xff01C851) : Colors.black26
              ),
            ),
            chatModel.countMessage > 0 ? Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xff01C851),
                shape: BoxShape.circle,
              ),
              child: Text(
                chatModel.countMessage.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0
                ),
              ),
            ) : SizedBox(),
          ],
        ),
      ),
    );
  }
}
