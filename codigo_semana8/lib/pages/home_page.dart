import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "-";
  List<String> names = [];
  List<Map<String, dynamic>> data = [
    {
      "name": "Molecule Man",
      "age": 29,
      "secretIdentity": "Dan Jukes",
      "powers": [
        "Radiation resistance",
        "Turning tiny",
        "Radiation blast"
      ]
    },
    {
      "name": "Madame Uppercut",
      "age": 39,
      "secretIdentity": "Jane Wilson",
      "powers": [
        "Million tonne punch",
        "Damage resistance",
        "Superhuman reflexes"
      ]
    },
    {
      "name": "The Batman",
      "age": 32,
      "secretIdentity": "Bruce Wayne",
      "powers": [
        "Billionaire",
        "Extremely handsome and strong",
        "High-tech gadgets"
      ]
    },
    {
      "name": "Iron Man",
      "age": 43,
      "secretIdentity": "Tony Stark",
      "powers": [
        "Billionaire",
        "Extremely handsome and strong",
        "High-tech gadgets"
      ]
    }
  ];

  @override
  initState() {
    super.initState();



  }

  Future<void> fetchDataFinal() async{
    names = await getData();
    setState(() {

    });
  }

  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Juan Carlos";
    });
  }

  Future<List<String>> getData () async {
    return Future.delayed(Duration(seconds: 3),(){
      return ["Juan", "Cristian", "Jaime", "Rolando", "Luis"];
    });
  }

  Future<List<Map<String, dynamic>>> getSuperheros () async {
    return Future.delayed(Duration(seconds: 7),(){
      return [
        {
          "name": "Molecule Man",
          "age": 29,
          "secretIdentity": "Dan Jukes",
          "powers": [
            "Radiation resistance",
            "Turning tiny",
            "Radiation blast"
          ]
        },
        {
          "name": "Madame Uppercut",
          "age": 39,
          "secretIdentity": "Jane Wilson",
          "powers": [
            "Million tonne punch",
            "Damage resistance",
            "Superhuman reflexes"
          ]
        },
        {
          "name": "The Batman",
          "age": 32,
          "secretIdentity": "Bruce Wayne",
          "powers": [
            "Billionaire",
            "Extremely handsome and strong",
            "High-tech gadgets"
          ]
        },
        {
          "name": "Iron Man",
          "age": 43,
          "secretIdentity": "Tony Stark",
          "powers": [
            "Billionaire",
            "Extremely handsome and strong",
            "High-tech gadgets"
          ]
        }
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futures"),
        actions: [
        ],
      ),
      body: FutureBuilder(
        future: getSuperheros(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          print(snapshot.hasData);
          print(snapshot.connectionState);
          print(snapshot.data);

          if (snapshot.hasData) {

            List<Map<String, dynamic>> _superheros = snapshot.data;

            return ListView.builder(
              itemCount: _superheros.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    _superheros[index]['name'],
                  ),
                  subtitle: Text(
                    _superheros[index]['secretIdentity'],
                  ),
                  trailing: Text(
                    _superheros[index]['age'].toString(),
                  ),
                  onTap: () {

                  },
                );
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(

            ),
          );
        },
      ),
    );
  }
}