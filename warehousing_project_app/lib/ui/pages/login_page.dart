//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/services/application/application_service.dart';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/ui/widgets/toast_widget.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';
import 'package:warehousing_project_app/utils/assets_util.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/ui/widgets/button_custom_widget.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';
import 'package:warehousing_project_app/ui/widgets/textfield_custom_widget.dart';
import 'package:warehousing_project_app/ui/pages/home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  //Declaración de variables:
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  //Función de clase - Inicio de sesión:
  Future _login (BuildContext context) async {

    //Establecer condición - Validar estado de formulario:
    if (_formKey.currentState!.validate()) {

      //Declaración de variables:
      String _user = _userController.text;
      String _password = _passwordController.text;
      isLoading = true;

      //Procedimiento - Cambiar estado:
      setState(() {});

      //Procedimiento - Instanciación de objeto:
      ApplicationService apiService = ApplicationService();

      //Función de clase - Inicio de sesión:
      User? userModel = await apiService.login(_user, _password);

      //Establecer condición - Validar respuesta:
      if (userModel != null) {

        //Redirigir a menú principal:
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage(user: userModel,)), (route) => false
        );

      } else {

        //Declaración de variables:
        isLoading = false;

        //Procedimiento - Cambiar estado:
        setState(() {});

        //Procedimiento - Notificación:
        ScaffoldMessenger.of(context).showSnackBar(
          ToastWidget("Error al iniciar sesión. Inténtalo nuevamente.", false)
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Asset.logo,
                        height: 70.0,
                      ),
                      spacingWidth6,
                      Text(
                        "Warehouse management App",
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
                    "Soluciones logísticas a la medida",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: kFontPrimaryColor.withOpacity(0.60),
                        letterSpacing: 0.05
                    ),
                  ),
                  spacing40,
                  TextFieldCustomWidget(
                    label: "Usuario:",
                    hintText: "Ingresa tu usuario",
                    inputTypeEnum: InputTypeEnum.user,
                    controller: _userController,
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
