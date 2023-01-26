import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 26.0,
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/206445/pexels-photo-206445.jpeg",
          ),
        ),
        title: Text(
          "Daniela Farfan",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.call_made_rounded,
              color: Color(0xff01C851),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "Ayer 11:02 p.m.",
              style: TextStyle(
                color: Colors.black45,
              ),
            )
          ],
        ),
        trailing: Icon(
          Icons.call,
          color: Color(0xff01C851),
        ),
      ),
    );
  }
}
