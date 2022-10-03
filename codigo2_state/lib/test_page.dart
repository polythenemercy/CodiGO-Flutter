import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  int count = 0;
  List<String> images = [
    "https://images.pexels.com/photos/1213294/pexels-photo-1213294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3422964/pexels-photo-3422964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/1211771/pexels-photo-1211771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2127022/pexels-photo-2127022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2568580/pexels-photo-2568580.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  ];

  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "name": "Imagen 1",
      "image": "https://images.pexels.com/photos/1213294/pexels-photo-1213294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "id": 2,
      "name": "Imagen 2",
      "image": "https://images.pexels.com/photos/3422964/pexels-photo-3422964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "id": 3,
      "name": "Imagen 3",
      "image": "https://images.pexels.com/photos/1211771/pexels-photo-1211771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "id": 4,
      "name": "Imagen 4",
      "image": "https://images.pexels.com/photos/2127022/pexels-photo-2127022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "id": 5,
      "name": "Imagen 5",
      "image": "https://images.pexels.com/photos/2568580/pexels-photo-2568580.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body: Column(
        children: [
          Text(data[count]['name'].toString()),
          Image(
              image: NetworkImage(data[count]['image']),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    count--;

                    setState(() {
                    });
                  },
                  child: Text("Anterior")
              ),
              ElevatedButton(
                  onPressed: () {
                    count++;

                    setState(() {
                    });
                  },
                  child: Text("Siguiente")
              ),
            ],
          )
          // const Image(
          //     image: AssetImage("assets/images/images.png")
          // )
        ],
      ),
    );
  }
}
