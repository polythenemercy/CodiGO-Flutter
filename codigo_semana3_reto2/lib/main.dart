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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Icon(Icons.notification_add_rounded)
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.25),
                  thickness: 2.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Updated: ",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey
                      ),
                    ), Text(
                      "February 11 at 19:23",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.network(
                  "https://images.pexels.com/photos/1181406/pexels-photo-1181406.jpeg",
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "Pelosi Wants To Win House, but Can She Corral The Democrats",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "⚫️ At 77, Representative Nancy Pelosi remains a dominant, but polarizing, figure in Washington.",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "⚫️ How can she bridges Democrats' factions on immigration may help determine whether she can lead her party to a majority.",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2h ago.",
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ), 
                          Row(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.upload_outlined,
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      )
                    ],
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
