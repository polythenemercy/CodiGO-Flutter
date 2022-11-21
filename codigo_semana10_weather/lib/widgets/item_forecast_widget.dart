import 'package:flutter/material.dart';

class ItemForecastWidget extends StatelessWidget {
  const ItemForecastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 16.0,
        bottom: 12.0
      ),
      padding: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 14.0
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.12),
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.30),
                offset: const Offset(0, 5),
                blurRadius: 12.0
            )
          ]
      ),
      child: Column(
        children: [
          Text(
            "10 a.m.",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.white60
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Image.asset(
            "assets/images/dom.png",
            height: 38.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "25 °C",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
