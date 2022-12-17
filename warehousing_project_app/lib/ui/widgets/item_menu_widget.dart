//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'general_widget.dart';

class ItemMenuWidget extends StatelessWidget {

  //Declaración de artibutos:
  String text;
  Color color;
  IconData icon;
  Function onTap;

  //Declaración de constructor:
  ItemMenuWidget({
    required this.text,
    required this.color,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.09),
                  offset: const Offset(0, 4),
                  blurRadius: 12.0
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: color.withOpacity(0.5),
                  shape: BoxShape.circle
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            spacing6,
            Text(
              text,
              style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.85),
                  fontSize: 15.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}
