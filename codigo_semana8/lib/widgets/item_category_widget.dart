import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 16.0),
      margin: EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12.0)
      ),
      child: Row(
        children: [
          Icon(
            Icons.ac_unit_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            "Art & culture",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0
            ),
          )
        ],
      ),
    );
  }
}
