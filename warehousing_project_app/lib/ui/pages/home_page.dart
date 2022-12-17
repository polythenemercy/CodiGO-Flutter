//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/ui/pages/fill_rate_page.dart';
import 'package:warehousing_project_app/ui/pages/login_page.dart';
import 'package:warehousing_project_app/ui/pages/stock_page.dart';
import 'package:warehousing_project_app/ui/pages/tracking_page.dart';
import 'package:warehousing_project_app/ui/widgets/item_menu_widget.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';

class HomePage extends StatelessWidget {
  //Declaración de atributos:
  User user;

  //Declaración de constructor:
  HomePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¡Hola, ${user?.userName}!",
                style: TextStyle(
                    color: kFontPrimaryColor.withOpacity(0.8),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              spacing10,
              Text(
                "¿En qué podemos ayudarte el día de hoy?",
                style: TextStyle(
                    color: kFontPrimaryColor.withOpacity(0.65),
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal),
              ),
              spacing14,
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 14.0,
                  mainAxisSpacing: 14.0,
                  children: [
                    ItemMenuWidget(
                      color: Color(0xff72585),
                      icon: Icons.bar_chart,
                      text: "Fill-rate",
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FillratePage(user: user)))
                      },
                    ),
                    ItemMenuWidget(
                      color: Color(0xfffba08),
                      icon: Icons.warehouse_outlined,
                      text: "Stock",
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StockPage(user: user)))
                      },
                    ),
                    ItemMenuWidget(
                      text: "Tracking",
                      color: Color(0xff00509d),
                      icon: Icons.search,
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackingPage(user: user)))
                      },
                    ),
                    ItemMenuWidget(
                      text: "Cerrar sesión",
                      color: Colors.red,
                      icon: Icons.logout,
                      onTap: () {
                        //Procedimiento - Redirigir a inicio:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
