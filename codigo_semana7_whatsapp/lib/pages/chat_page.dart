import 'package:codigo_semana7_whatsapp/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemChatWidget(
          chatModel: chats[index],
        );
      },
    );
  }
}

