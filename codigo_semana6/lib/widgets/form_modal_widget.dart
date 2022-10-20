import 'package:flutter/material.dart';

class FormModalWidget extends StatefulWidget {
  const FormModalWidget({Key? key}) : super(key: key);

  @override
  State<FormModalWidget> createState() => _FormModalWidgetState();
}

class _FormModalWidgetState extends State<FormModalWidget> {
  String valueDrop = "A";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0)
      ),
      contentPadding:  EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/figma.png',
              height: 60,
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              "Share with people",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              "The following users have access:",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 11.0,
                  color: Colors.black.withOpacity(0.65)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/2406949/pexels-photo-2406949.jpeg",
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Peter Wu",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "peterwu@gmail.com",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Remove",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Colors.black.withOpacity(0.17),
                      width: 1.4
                  )
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: valueDrop,
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 16,
                      color: Colors.black54,
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.person_outline_outlined,
                              size: 18,
                              color: Colors.black54,
                            ),
                            Text(
                              "Select team member",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black54
                              ),
                            ),
                          ],
                        ),
                        value: "A",
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Item 1",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54
                          ),
                        ),
                        value: "B",
                      ),
                      DropdownMenuItem(
                        child: Text("Item 2",),
                        value: "C",
                      ),
                      DropdownMenuItem(
                        child: Text("Item 3",),
                        value: "D",
                      ),
                    ],
                    onChanged: (value) {
                      valueDrop = value!;
                      setState(() {

                      });
                    }
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Cancelar",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Confirmar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff7E56DA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
