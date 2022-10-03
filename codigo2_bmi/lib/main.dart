
import 'package:flutter/material.dart';
import 'home_page.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IMC App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        sliderTheme: SliderThemeData(
            activeTrackColor: Color(0xfff72585).withOpacity(0.85),
            inactiveTrackColor: Color(0xff2b2d42).withOpacity(0.2),
            overlayColor: Color(0xfff72585).withOpacity(0.3),
            thumbColor: Color(0xfff72585),
            thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 14,
                pressedElevation: 20
            ),
            overlayShape: RoundSliderOverlayShape(
                overlayRadius: 30
            ),
            trackHeight: 8.0
        ),
        fontFamily: 'Source Sans Pro'
      ),
    );
  }
}
