import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../general/colors.dart';
import 'general_widget.dart';

class TextFieldCustomWidget extends StatelessWidget {

  String label;
  String hintText;
  TextEditingController controller;
  InputTypeEnum? inputTypeEnum;

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
          decoration: InputDecoration(
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

            if (value != null && value.isEmpty) {
              return "Campo obligatorio";
            }

            return null;

          },
        )
      ],
    );
  }
}

class TextFieldCustomPasswordWidget extends StatefulWidget {

  TextEditingController controller;

  TextFieldCustomPasswordWidget({
    required this.controller,
  });

  @override
  State<TextFieldCustomPasswordWidget> createState() => _TextFieldCustomPasswordWidgetState();
}

class _TextFieldCustomPasswordWidgetState extends State<TextFieldCustomPasswordWidget> {

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
                  isInvisible = !isInvisible;
                  setState(() {});
                },
                icon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 18.0,
                    color: kFontPrimaryColor.withOpacity(0.50)
                )
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

            if (value != null && value.isEmpty) {
              return "Campo obligatorio";
            }

            return null;

          },
        )
      ],
    );
  }
}
