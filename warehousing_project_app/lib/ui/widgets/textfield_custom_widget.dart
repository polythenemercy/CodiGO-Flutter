import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';
import 'general_widget.dart';

//Clase - Campos de texto:
class TextFieldCustomWidget extends StatelessWidget {

  //Declaración de atributos:
  String label;
  String hintText;
  TextEditingController controller;
  InputTypeEnum? inputTypeEnum;

  //Declaración de constructor:
  TextFieldCustomWidget({
    required this.controller,
    required this.label,
    required this.hintText,
    this.inputTypeEnum,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: kFontPrimaryColor.withOpacity(0.75)
          ),
        ),
        spacing10,
        TextFormField(
          controller: controller,
          keyboardType: inputTypeMap[inputTypeEnum],
          style: TextStyle(
              color: kFontPrimaryColor.withOpacity(0.5),
              fontSize: 14.0
          ),
          inputFormatters: inputTypeEnum == InputTypeEnum.user ? [
            FilteringTextInputFormatter.allow(RegExp('[A-Za-z0-9]'),),
          ] : [],
          decoration: InputDecoration(
            counter: const SizedBox(),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 14.0,
                color: kFontPrimaryColor.withOpacity(0.5)
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9
                )
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9
                )
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9
                )
            ),
          ),
          validator: (String? value) {

            //Establecer condición - Validar vacios:
            if (value != null && value.isEmpty) {

              //Procedimiento - Retornar valor:
              return "Campo obligatorio";

            }

            //Procedimiento - Retornar variable:
            return null;

          },
        )
      ],
    );
  }

}

class TextFieldCustomPasswordWidget extends StatefulWidget {

  //Declaración de atributos:
  TextEditingController controller;

  //Declaración de constructor:
  TextFieldCustomPasswordWidget({
    required this.controller,
  });

  @override
  State<TextFieldCustomPasswordWidget> createState() => _TextFieldCustomPasswordWidgetState();

}

class _TextFieldCustomPasswordWidgetState extends State<TextFieldCustomPasswordWidget> {

  //Declaración de variables:
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tu contraseña",
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: kFontPrimaryColor.withOpacity(0.75)
          ),
        ),
        spacing10,
        TextFormField(
          controller: widget.controller,
          obscureText: isInvisible,
          style: TextStyle(
              color: kFontPrimaryColor.withOpacity(0.5),
              fontSize: 14.0
          ),
          decoration: InputDecoration(
            hintText: "Ingrese su contraseña",
            hintStyle: TextStyle(
                fontSize: 14.0,
                color: kFontPrimaryColor.withOpacity(0.5)
            ),
            suffixIcon: IconButton(
                onPressed: () {

                  //Declaración de variables:
                  isInvisible = !isInvisible;

                  //Procedimiento - Cambiar estado:
                  setState(() {});

                },
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 18.0,
                  color: kFontPrimaryColor.withOpacity(0.50),
                )
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: kFontPrimaryColor.withOpacity(0.14),
                width: 0.9,
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: kFontPrimaryColor.withOpacity(0.14),
                width: 0.9
              )
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: kFontPrimaryColor.withOpacity(0.14),
                width: 0.9
              )
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: kFontPrimaryColor.withOpacity(0.14),
                width: 0.9
              )
            ),
          ),
          validator: (String? value) {

            //Establecer condición - Validar variable:
            if (value != null && value.isEmpty) {

              //Procedimiento - Retornar valor:
              return "Campo obligatorio";

            }

            //Procedimiento - Retornar valor:
            return null;

          },
        )
      ],
    );
  }
}
