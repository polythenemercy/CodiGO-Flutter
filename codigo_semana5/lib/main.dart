import 'package:codigo_semana5/people_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'People Page',
      debugShowCheckedModeBanner: false,
      home: PeoplePage(),
    );
  }
}