import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehousing_project_app/ui/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KP Warehousing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: LoginPage(

      ),
    );
  }
}