
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F8FE),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffF3F8FE).withOpacity(0.50),
                      offset: Offset(0.0, 7.0),
                      blurRadius: 16.0
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xff3D4584),
                                size: 18.0,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xff3D4584),
                                size: 18.0,
                              )
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg"
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Text(
                            "Jorge Herrera",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color(0xff3D4584)
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          const Text(
                            "UX/UI Developer full stack",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                                color: Colors.black87
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "\$8900",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        color: Color(0xff3D4584)
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 34.0,
                                width: 34.0,
                                child: VerticalDivider(
                                  color: Colors.black87.withOpacity(0.3),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$5500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        color: Color(0xff3D4584)
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "Expenses",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black.withOpacity(0.7)
                                    ),

                                  )
                                ],
                              ),
                              SizedBox(
                                width: 34.0,
                                height: 34.0,
                                child: VerticalDivider(
                                  color: Colors.black87.withOpacity(0.3),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$890",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        color: Color(0xff3D4584)
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "Loan",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                            color: Color(0xff3D4584),
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                          Icons.notification_add_outlined,
                          color: Color(0xff3D4584),
                          size: 22.0
                      ),
                    ],
                  ),
                  Text(
                    "Set 12, 2022",
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_upward
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Sent",
                    ),
                    Text(
                      "Sending payment to clients",
                    ),
                  ],
                ),
                Text(
                  "\$150"
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
