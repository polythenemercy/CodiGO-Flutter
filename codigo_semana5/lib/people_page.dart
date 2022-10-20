import 'package:flutter/material.dart';
import 'item_person_widget.dart';
import 'user_model.dart';

class PeoplePage extends StatefulWidget {
  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  List<UserModel> people2 = [
    UserModel(id: 1, name: "Jorge Herrera", phone: "969355302", role: "User"),
    UserModel(
        id: 1, name: "Fiorella Marquez", phone: "987354201", role: "User"),
    UserModel(id: 1, name: "Pedro Martinez", phone: "913702869", role: "Admin")
  ];

  String fullName = "";
  String phone = "";
  String role = "Admin";

  String filterText = "Todos";
  List<UserModel> people2Aux = [];

  void filterData() {

    people2 = people2Aux;
    people2 = filterText != "Todos" ? people2.where((element) => element.role == filterText).toList() : people2;

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    people2Aux = people2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page (${people2.length})"),
        actions: [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Registrar persona:",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.75)),
            ),
            TextField(
              onChanged: (String value) => fullName = value,
              decoration: const InputDecoration(
                hintText: "Nombre y apellido:",
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (String value) => phone = value,
              decoration: const InputDecoration(
                hintText: "Teléfono:",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Rol:",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.75)),
            ),
            RadioListTile(
                value: "Admin",
                title: Text("Admin"),
                groupValue: role,
                onChanged: (String? value) {
                  role = value!;
                  setState(() {});
                }),
            RadioListTile(
                value: "User",
                title: Text("User"),
                groupValue: role,
                onChanged: (String? value) {
                  role = value!;
                  setState(() {});
                }),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 48.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                onPressed: () {
                  UserModel user = UserModel(
                      id: people2.length + 1,
                      name: fullName,
                      phone: phone,
                      role: role);

                  people2.add(user);

                  setState(() {});
                },
                child: Text("Agregar"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Divider(),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Listado de personas",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.75)),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  child: InkWell(
                    onTap: () {
                      filterText = "Todos";
                      filterData();
                      setState(() {});
                    },
                    child: Text(
                      "Todos",
                      style: TextStyle(
                          color: filterText == "Todos"
                              ? Colors.black
                              : Colors.black.withOpacity(0.5),
                          fontWeight: filterText == "Todos"
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  child: InkWell(
                    onTap: () {
                      filterText = "Admin";
                      filterData();
                      setState(() {});
                    },
                    child: Text(
                      "Admin",
                      style: TextStyle(
                          color: filterText == "Admin"
                              ? Colors.black
                              : Colors.black.withOpacity(0.5),
                          fontWeight: filterText == "Admin"
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  child: InkWell(
                    onTap: () {
                      filterText = "User";
                      filterData();
                      setState(() {});
                    },
                    child: Text(
                      "User",
                      style: TextStyle(
                          color: filterText == "User"
                              ? Colors.black
                              : Colors.black.withOpacity(0.5),
                          fontWeight: filterText == "User"
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            people2.isNotEmpty
                ? Column(
                    children: [
                      ...List.generate(
                        people2.length,
                        (index) => ItemPersonWidget(
                          data: people2[index],
                          miFuncion: () {
                            people2.removeAt(index);

                            setState(() {});
                          },
                        ),
                      )
                    ],
                  )
                : Center(
                    child: Column(
                      children: [
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/1380/1380641.png",
                          height: 60.0,
                          color: Colors.black.withOpacity(0.75),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text("No hay registros")
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
