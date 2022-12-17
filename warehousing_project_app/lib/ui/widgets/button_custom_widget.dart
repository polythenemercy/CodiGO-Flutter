//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';

//Clase - Boton personalizado:
class ButtonCustomWidget extends StatelessWidget {

  //Declaración de atributos:
  String text;
  Function onTap;

  //Declaración de constructor:
  ButtonCustomWidget({
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 48.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                  color: kFontPrimaryColor.withOpacity(0.4)
              )
            ],
            gradient: LinearGradient(
              colors: [
                kBrandsPrimaryColor,
                kBrandsPrimaryColor,
                kBrandsPrimaryColor,
                kBrandsSecondaryColor
              ],
            )
        ),
        child: Text(
          text,
          style: TextStyle(
              color: kFontPrimaryColor.withOpacity(0.75),
              fontWeight: FontWeight.bold,
              fontSize: 16.0
          ),
        ),
      ),
    );
  }
}
