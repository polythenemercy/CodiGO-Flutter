import 'package:codigo_semana11_alert/models/user_model.dart';
import 'package:codigo_semana11_alert/services/api_service.dart';
import 'package:codigo_semana11_alert/ui/general/colors.dart';
import 'package:codigo_semana11_alert/ui/pages/home_page.dart';
import 'package:codigo_semana11_alert/ui/widgets/button_custom_widget.dart';
import 'package:codigo_semana11_alert/ui/widgets/general_widget.dart';
import 'package:codigo_semana11_alert/ui/widgets/textfield_custom_widget.dart';
import 'package:codigo_semana11_alert/utils/assets_data.dart';
import 'package:codigo_semana11_alert/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _dniController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  Future _login (BuildContext context) async {

    if (_formKey.currentState!.validate()) {

      String _dni = _dniController.text;
      String _password = _passwordController.text;

      isLoading = true;
      setState(() {

      });

      ApiService apiService = ApiService();

      UserModel? userModel = await apiService.login(_dni, _password);

      if (userModel != null) {

        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()), (route) => false);

      } else {
        isLoading = false;
        setState(() {

        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0)
            ),
            backgroundColor: Colors.redAccent,
            content: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.white,
                ),
                spacingWidth12,
                const Text(
                  "Error al iniciar sesión. Inténtalo nuevamente.",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        );
      }

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isLoading ? SafeArea(
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
                  ButtonCustomWidget(
                      text: "Iniciar sesión",
                      onTap: () => _login(context)
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
      ) : const Center(
        child: SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2.3,
          ),
        ),
      ),
    );
  }
}
