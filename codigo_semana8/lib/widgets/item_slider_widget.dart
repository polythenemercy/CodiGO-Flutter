import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 210,
      margin: const EdgeInsets.only(
        right: 12.0,
        bottom: 10.0
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              color: Color(0xff34383F).withOpacity(0.12),
              blurRadius: 12,
              offset: const Offset(0, 4)
          )
        ],
        image: DecorationImage(
          image: NetworkImage(
            "https://images.pexels.com/photos/8427984/pexels-photo-8427984.jpeg",
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xff34383F).withOpacity(0.90),
                    Colors.transparent,
                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Mount Kilimanjaro",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "4.7 (22587 views)",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
