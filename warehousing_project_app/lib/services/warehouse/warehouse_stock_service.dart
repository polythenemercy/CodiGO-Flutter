//Procedimiento - Importar referencias:
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:warehousing_project_app/models/stock_model.dart';
import 'package:warehousing_project_app/models/stock_management_model.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';

//Clase - Stock:
class StockService {
  //Función de clase - Inicio de sesión:
  Future<List<Stock>> registerSearch(
      String user, String token, int idempresa) async {
    //Declaración de variable:
    Uri _url = Uri.parse(
        "$pathProduction/warehouse/stock/core/?user=$user&token=$token&idempresa=${idempresa.toString()}");

    //Procedimiento - Realizar conexión:
    http.Response response = await http.get(_url);

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {
      //Declaración de variables:
      Map<String, dynamic> responseMap = json.decode(response.body);
      List list = responseMap['data'];
      List<Stock> a = list.map((e) => Stock.fromJson(e)).toList();

      //Procedimiento - Retornar valor:
      return a;
    }

    //Procedimiento - Retornar valor:
    return [];
  }

  //Función de clase - Inicio de sesión:
  Future<List<StockManagement>> registerSearchManagement(
      String user, String token, int idempresa) async {
    //Declaración de variable:
    Uri _url = Uri.parse(
        "$pathProduction/warehouse/stock/management/?user=$user&token=$token&idempresa=${idempresa.toString()}");

    //Procedimiento - Realizar conexión:
    http.Response response = await http.get(_url);

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {
      //Declaración de variables:
      Map<String, dynamic> responseMap = json.decode(response.body);

      //Procedimiento - Creación de objeto:
      List<StockManagement> list =
          responseMap['data'].map((e) => StockManagement.fromJson(e)).toList();

      //Procedimiento - Retornar valor:
      return list;
    }

    //Procedimiento - Retornar valor:
    return [];
  }
}
