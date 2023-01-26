import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 7.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 26.0,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/5225115/pexels-photo-5225115.jpeg",
                ),
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "tap to add status update",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.045)
            ),
            height: 35,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(
              "Recent updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff01C851),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 7.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 26.0,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3819580/pexels-photo-3819580.jpeg",
                ),
              ),
              title: Text(
                "Maria Martinez",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Just now",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 7.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 26.0,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3932889/pexels-photo-3932889.jpeg",
                ),
              ),
              title: Text(
                "Mamá",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Today, 8:13 AM",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
