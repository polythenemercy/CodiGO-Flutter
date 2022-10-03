import 'package:flutter/material.dart';
import 'package:codigo_init/home_page.dart';
import 'package:codigo_init/challenge2_page.dart';
import 'package:codigo_init/challenge3_page.dart';


void main() {
  runApp(
    MyApp(),
  );
}


class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  String name = "Elvis";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Challenge3Page(),
    );
  }
}


