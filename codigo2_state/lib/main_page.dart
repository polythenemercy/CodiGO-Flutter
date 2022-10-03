import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //programar lo que yo quiero
  int counter = 0;
  List<String> names = [
    "Juan",
    "Luis",
    "Carlos",
    "Dario",
    "Fiorella",
    "Manuel",
    "Diego",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hola a todos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Row(),
          Text(
            names[counter],
            style: TextStyle(
                fontSize: 40.0
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          ElevatedButton(
              onPressed: () {

                if (counter < names.length - 1) {
                  counter = counter + 1;

                  setState(() {
                  });
                }
              },
              child: Text("Siguiente")
          )
        ],
      ),
    );
  }
}

