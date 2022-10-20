import 'package:codigo_semana7_whatsapp/models/chad_model.dart';

import '../models/chat_message_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarUrl: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
    userName: "Luisa Arguelles",
    message: "Hola como estas",
    time: "20:04",
    countMessage: 0,
    isTyping: false
  ),
  ChatModel(
      avatarUrl: "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg",
      userName: "Maria Carla Herrera",
      message: "tienes que enviar la documentació a traves de la siguiente pagina",
      time: "10:12",
      countMessage: 3,
      isTyping: false
  ),
  ChatModel(
      avatarUrl: "https://images.pexels.com/photos/923368/pexels-photo-923368.jpeg",
      userName: "Daniela Suarez",
      message: "no te entiendo",
      time: "11:19",
      countMessage: 0,
      isTyping: false
  ),
  ChatModel(
      avatarUrl: "https://images.pexels.com/photos/3781677/pexels-photo-3781677.jpeg",
      userName: "Alejandra Tesara",
      message: "tarado",
      time: "9:54",
      countMessage: 1,
      isTyping: false
  ),
  ChatModel(
      avatarUrl: "https://images.pexels.com/photos/1216589/pexels-photo-1216589.jpeg",
      userName: "Johnny Perez",
      message: "que quisiste decir",
      time: "20:04",
      countMessage: 2,
      isTyping: true
  ),
];

List<ChatMessageModel> chatMessageList = [
  ChatMessageModel(
      messageContent: "hola!",
      messageType: "me"
  ),
  ChatMessageModel(
      messageContent: "habla ctmr",
      messageType: "other"
  ),
  ChatMessageModel(
      messageContent: "ptmre perdio la u causa",
      messageType: "me"
  ),
  ChatMessageModel(
      messageContent: "hahahahah",
      messageType: "other"
  ),
  ChatMessageModel(
      messageContent: "nos vemos en un toque",
      messageType: "me"
  ),
  ChatMessageModel(
      messageContent: "yo",
      messageType: "other"
  ),
];