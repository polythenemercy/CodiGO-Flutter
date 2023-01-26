import 'package:codigo_semana11_alert/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alerta app",
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme()
      ),
      home: LoginPage(
      ),
    );
  }
}
