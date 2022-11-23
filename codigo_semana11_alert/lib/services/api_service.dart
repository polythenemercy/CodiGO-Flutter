import 'package:codigo_semana11_alert/models/citizen_model.dart';
import 'package:codigo_semana11_alert/models/incident_model.dart';
import 'package:codigo_semana11_alert/models/incident_type_model.dart';
import 'package:codigo_semana11_alert/models/user_model.dart';
import 'package:codigo_semana11_alert/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {

  //Función de clase - Inicio de sesión:
  Future login (String dni, String password) async {

    //Declaración de variable:
    Uri _url = Uri.parse('$pathProduction/login/');

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

  //Función de clase - Obtener datos:
  Future<List<CitizenModel>> getCitizen () async {

    Uri _url = Uri.parse("$pathProduction/ciudadanos/");

    http.Response response = await http.get(_url);

    if (response.statusCode == 200) {

      Map<String, dynamic> myMap = json.decode(response.body);
      List list = myMap['data'];
      List<CitizenModel> citizenList = list.map((e) => CitizenModel.fromJson(e)).toList();
      return citizenList;

    }

    return [];

  }

  //Función de clase - Obtener datos:
  Future<List<IncidentTypeModel>> getIncidentType () async {

    Uri _url = Uri.parse("$pathProduction/incidentes/tipos/");

    http.Response response = await http.get(_url);

    if (response.statusCode == 200) {

      List list = json.decode(response.body);
      List<IncidentTypeModel> incidentTypeList = list.map((e) => IncidentTypeModel.fromJson(e)).toList();
      return incidentTypeList;

    }

    return [];

  }

  //Función de clase - Obtener datos:
  Future<List<IncidentModel>> getIncident () async {

    Uri _url = Uri.parse("$pathProduction/incidentes/");
    http.Response response = await http.get(_url);

    if (response.statusCode == 200) {

      List listData = json.decode(response.body);
      List<IncidentModel> incidentList = listData.map((e) => IncidentModel.fromJson(e)).toList();
      return incidentList;
    }

    return [];

  }

}