import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Borrar el constructor - stless
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                            Icons.chevron_left,
                            size: 32.0
                        ),
                        Text(
                            "Top news",
                            style: TextStyle(fontSize: 18.0)
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.share),
                        Icon(Icons.bookmark),
                        Icon(Icons.more_vert),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 0.9,
                  width: double.infinity,
                  color: Colors.black38,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text("Lists", style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                            height: 1.2,
                            color: Colors.black.withOpacity(0.5)
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Image.network(
                        "https://images.pexels.com/photos/13135852/pexels-photo-13135852.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        height: 200.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "",
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "",
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}
