import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {

  //Map<String, dynamic> data;
  String type;
  String description;
  int value;
  //IconData icon;

  ItemListWidget({required this.type, required this.value, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff3D4584).withOpacity(0.1),
                blurRadius: 12.0,
                offset: const Offset(0, 0.7)
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xff3D4584).withOpacity(0.12),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Icon(
              Icons.arrow_upward,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(type,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0
                    )),
                const SizedBox(
                  height: 2.0,
                ),
                Text(description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 11.0,
                        color: Colors.black54
                    )),
              ],
            ),
          ),
          Text("\$${value}",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )),
        ],
      ),
    );
  }
}
