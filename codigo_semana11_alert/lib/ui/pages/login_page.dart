import 'package:codigo_semana11_alert/models/user_model.dart';
import 'package:codigo_semana11_alert/services/api_service.dart';
import 'package:codigo_semana11_alert/ui/general/colors.dart';
import 'package:codigo_semana11_alert/ui/pages/home_page.dart';
import 'package:codigo_semana11_alert/ui/widgets/general_widget.dart';
import 'package:codigo_semana11_alert/ui/widgets/textfield_custom_widget.dart';
import 'package:codigo_semana11_alert/utils/assets_data.dart';
import 'package:codigo_semana11_alert/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _dniController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future _login (BuildContext context) async {

    if (_formKey.currentState!.validate()) {

      String _dni = _dniController.text;
      String _password = _passwordController.text;

      ApiService apiService = ApiService();

      UserModel? userModel = await apiService.login(_dni, _password);

      if (userModel != null) {

        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()), (route) => false);

      }

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetData.logo,
                        height: 20.0,
                      ),
                      spacingWidth6,
                      Text(
                        "Alerta app",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: kFontPrimaryColor,
                          letterSpacing: 0.05
                        ),
                      ),
                    ],
                  ),
                  spacing30,
                  Text(
                    "Lorem ipsum",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: kFontPrimaryColor.withOpacity(0.60),
                        letterSpacing: 0.05
                    ),
                  ),
                  spacing40,
                  TextFieldCustomWidget(
                    label: "Tu número de DNI",
                    hintText: "Ingresa tu DNI",
                    inputTypeEnum: InputTypeEnum.dni,
                    controller: _dniController,
                  ),
                  spacing30,
                  TextFieldCustomPasswordWidget(
                    controller: _passwordController,
                  ),
                  spacing30,
                  InkWell(
                    onTap: () {

                      _login(context);

                    },
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
                        "Iniciar sesión",
                        style: TextStyle(
                          color: kFontPrimaryColor.withOpacity(0.75),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                        ),
                      ),
                    ),
                  ),
                  spacing30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "¿Aun no estas registrado? ",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: kFontPrimaryColor.withOpacity(0.75)
                        ),
                      ),
                      Text(
                        "Registrate",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: kFontPrimaryColor.withOpacity(0.75)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
