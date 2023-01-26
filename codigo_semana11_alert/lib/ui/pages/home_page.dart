import 'package:codigo_semana11_alert/ui/general/colors.dart';
import 'package:codigo_semana11_alert/ui/pages/citizen_page.dart';
import 'package:codigo_semana11_alert/ui/pages/incident_type_page.dart';
import 'package:codigo_semana11_alert/ui/widgets/general_widget.dart';
import 'package:codigo_semana11_alert/ui/widgets/item_menu_widget.dart';
import 'package:flutter/material.dart';

import 'incident_page.dart';

class HomePage extends StatelessWidget {
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
                "Bienvenido",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.8),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              spacing10,
              Text(
                "Lorem ipsum",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.65),
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal
                ),
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
                      icon: Icons.people,
                      text: "Ciudadanos",
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CitizenPage())),
                    ),
                    ItemMenuWidget(
                      color: Color(0xfffba08),
                      icon: Icons.add_alert,
                      text: "Incidentes",
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncidentPage())),
                    ),
                    ItemMenuWidget(
                        text: "Noticias",
                        color: Color(0xff00509d),
                        icon: Icons.newspaper,
                        onTap: () {},
        ),
                    ItemMenuWidget(
                        text: "Reportes",
                        color: Color(0xff02c39a),
                        icon: Icons.bar_chart,
                        onTap: () {},
      ),
                    ItemMenuWidget(
                        text: "Tipos incidentes",
                        color: Color(0xff7b2cbf),
                        icon: Icons.warning,
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncidentTypePage())),
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
