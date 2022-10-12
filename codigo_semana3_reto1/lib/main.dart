import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reto #1',
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg",
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Kandersteg, Switzerland",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rate,
                            color: Colors.orange,
                          ),
                          Text(
                            "41"
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 45.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add_call,
                            color: Colors.lightBlue,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "CALL",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 10.0
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.lightBlue,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "ROUTE",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 10.0
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.lightBlue,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "SHARE",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.lightBlue
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
