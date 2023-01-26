
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/ui/pages/init_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MenuApp",
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: InitPage(),
    );
  }
}

