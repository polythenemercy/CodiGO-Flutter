//Procedimiento - Importar referencias:
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';

//Clase - Aplicación:
class ApplicationService {

  //Función de clase - Inicio de sesión:
  Future login (String user, String password) async {

    //Declaración de variable:
    Uri _url = Uri.parse('$pathProduction/application/login/');

    //Procedimiento - Realizar conexión:
    http.Response response = await http.post(
      _url,
      headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode(
          {
            "user": user,
            "password": password
          }
      ),
    );

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {

      //Declaración de variables:
      Map<String, dynamic> responseMap = json.decode(response.body);

      //Procedimiento - Creación de objeto:
      User userModel = User.fromJson(responseMap['data']);

      //Procedimiento - Retornar valor:
      return userModel;

    }

    //Procedimiento - Retornar valor:
    return null;

  }

}