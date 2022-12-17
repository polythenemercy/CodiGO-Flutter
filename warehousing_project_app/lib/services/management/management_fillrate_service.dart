//Procedimiento - Importar referencias:
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:warehousing_project_app/models/fillrate_model.dart';
import 'package:warehousing_project_app/models/fillrate_management_model.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';

//Clase - Fillrate:
class FillrateService {
  //Función de clase - Inicio de sesión:
  Future<List<Fillrate>> registerSearch(
      String user, String token, int idempresa, String year) async {
    //Declaración de variable:
    Uri _url = Uri.parse(
        "$pathProduction/management/fill-rate/core/?user=$user&token=$token&idempresa=${idempresa.toString()}&year=$year");

    //Procedimiento - Realizar conexión:
    http.Response response = await http.get(_url);

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {
      //Declaración de variables:
      Map<String, dynamic> responseMap = json.decode(response.body);

      //Procedimiento - Creación de objeto:
      List list = responseMap['data'];

      List<Fillrate> a = list.map((e) => Fillrate.fromJson(e)).toList();

      //Procedimiento - Retornar valor:
      return a;
    }

    //Procedimiento - Retornar valor:
    return [];
  }

  //Función de clase - Inicio de sesión:
  Future<List<FillrateManagement>> registerSearchManagement(
      String user, String token, int idempresa) async {
    //Declaración de variable:
    Uri _url = Uri.parse(
        "$pathProduction/data/flutter/management/fill-rate/overall/?user=$user&token=$token&idempresa=${idempresa.toString()}");

    //Procedimiento - Realizar conexión:
    http.Response response = await http.get(_url);

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {
      //Declaración de variables:
      Map<String, dynamic> responseMap = json.decode(response.body);

      //Procedimiento - Creación de objeto:
      List<FillrateManagement> list = responseMap['data']
          .map((e) => FillrateManagement.fromJson(e))
          .toList();

      //Procedimiento - Retornar valor:
      return list;
    }

    //Procedimiento - Retornar valor:
    return [];
  }
}
