import 'package:codigo_semana6/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:codigo_semana6/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme()
      ),
      home: AlertPage(),
    );
  }
}

