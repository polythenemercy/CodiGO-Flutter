import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codigo2_state/main_page.dart';
import 'package:codigo2_state/test_page.dart';
import 'package:codigo2_state/test2_page.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test2Page(),
    );
  }
}

