import 'package:codigo_semana11_alert/models/user_model.dart';
import 'package:codigo_semana11_alert/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {

  //Función de clase - Inicio de sesión:
  Future login (String dni, String password) async {

    //Declaración de variable:
    Uri _url = Uri.parse('${pathProduction}/login/');

    //Procedimiento - Realizar conexión:
    http.Response response = await http.post(
      _url,
      headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode(
        {
          "username": dni,
          "password": password
        }
      ),
    );

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {

      //Declaración de variables:
      Map<String, dynamic> myMap = json.decode(response.body);

      //Procedimiento - Creación de objeto:
      UserModel userModel = UserModel.fromJson(myMap['user']);

      //Procedimiento - Retornar valor:
      return userModel;

    }

    //Procedimiento - Retornar valor:
    return null;

  }

}