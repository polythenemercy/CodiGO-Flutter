import 'dart:math';

import 'package:codigo_semana5/user_model.dart';
import 'package:flutter/material.dart';

class ItemPersonWidget extends StatelessWidget {
  UserModel data;
  Function miFuncion;

  ItemPersonWidget({
    required this.data,
    required this.miFuncion
  });

  final List<Color> _colors = [
    Colors.indigo,
    Colors.redAccent,
    Colors.blue,
    Colors.teal,
    Colors.amber,
    Colors.purple,
    Colors.pinkAccent
  ];

  @override
  Widget build(BuildContext context) {

    int index = Random().nextInt(_colors.length);

    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 6.0),
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.2),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _colors[index],
          child: Text(
            data.name[0],
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.normal),
          ),
        ),
        title: Text(
          data.name,
        ),
        subtitle: Text(
          "Teléfono: ${data.phone} - Rol: ${data.role}",
        ),
        trailing: IconButton(
          onPressed: () {
           miFuncion();
          },
          icon: Icon(
            Icons.delete_forever_rounded,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
    ;
  }
}
