import 'package:codigo_semana6/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {

  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "type": "Sent",
      "description": "Sending payment to Clients",
      "value": 130
    },
    {
      "id": 2,
      "type": "Recieve",
      "description": "Receiving salary from Company",
      "value": 150
    },
    {
      "id": 3,
      "type": "Loan",
      "description": "Loan for the car",
      "value": 20
    },
    {
      "id": 4,
      "type": "Sent",
      "description": "Sending payment to Supplier",
      "value": 100
    },
    {
      "id": 5,
      "type": "Recieve",
      "description": "Receiving salary bonus from Client",
      "value": 80
    },
    {
      "id": 6,
      "type": "Loan",
      "description": "Loan for the water supplier",
      "value": 200
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF3F8FE),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26.0),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff3d4584).withOpacity(0.16),
                              offset: const Offset(0.0, 7.0),
                              blurRadius: 16.0),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.search,
                              color: Color(0xff3d4584),
                              size: 18.0,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Color(0xff3d4584),
                              size: 18.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40.0,
                          backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        const Text(
                          "Hira Riaz",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xff3D4584)),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        const Text(
                          "UX/UI Designer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "\$8900",
                                  style: TextStyle(
                                      color: Color(0xff3D4584),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Income",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.70),
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 34.0,
                              width: 30.0,
                              child: VerticalDivider(
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "\$5500",
                                  style: TextStyle(
                                      color: Color(0xff3D4584),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Expenses",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.70),
                                      fontSize: 12.0),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 34.0,
                              width: 30.0,
                              child: VerticalDivider(
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "\$890",
                                  style: TextStyle(
                                      color: Color(0xff3D4584),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Loan",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.70),
                                      fontSize: 12.0),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Overview",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                  color: Color(0xff3D4584))),
                          SizedBox(
                            width: 6.0,
                          ),
                          Icon(
                            Icons.notification_add_outlined,
                            size: 18.0,
                            color: Color(0xff3D4584),
                          ),
                        ],
                      ),
                      Text(
                        "Sept 13, 2022",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Color(0xff3D4584),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  ListView.builder(
                    itemCount: data.length,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemListWidget(description: data[index]['description'], type: data[index]['type'], value: data[index]['value'],);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
