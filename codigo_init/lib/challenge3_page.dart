import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Challenge3Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 4.0),
                        color: Colors.amber,
                        child: const Text(
                          "Travel",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                      Row (
                        children: const [
                          Icon(
                            Icons.timelapse,
                            color: Colors.black26,
                            size: 18,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "12:23",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black26,
                            ),

                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.65),
                      height: 1.4,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.edit,
                            size: 16.0,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Actividad 23 min.",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.chat_bubble,
                            size: 16.0,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "23",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Icon(
                            Icons.share,
                            size: 16.0,
                            color: Colors.black26,
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      height: 1.4,
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Image.network(
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    "https://images.pexels.com/photos/1938032/pexels-photo-1938032.jpeg"
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
