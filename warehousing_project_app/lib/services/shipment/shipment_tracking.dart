//Procedimiento - Importar referencias:
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:warehousing_project_app/models/tracking_model.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';

//Clase - Tracking:
class TrackingService {
  //Función de clase - Inicio de sesión:
  Future<Map> registerSearch(
      String user, String token, int idempresa, String search) async {
    //Declaración de variable:
    Uri _url = Uri.parse(
        "$pathProduction/shipment/tracking/?user=$user&token=$token&idempresa=${idempresa.toString()}&search=$search");

    //Procedimiento - Realizar conexión:
    http.Response response = await http.get(_url);

    //Establecer condición - Validar respuesta:
    if (response.statusCode == 200) {
      //Procedimiento - Decodificar respuesta
      Map<String, dynamic> responseMap = json.decode(response.body);
      //Declaración de variables:
      Petition petition =
          Petition.fromJson(responseMap['data']['petition_data']);
      Timeline timeline =
          Timeline.fromJson(responseMap['data']['tracking_timeline']);
      Status status = Status.fromJson(responseMap['data']['tracking_status']);
      List list1 = responseMap['data']['shipment_data'];
      List<Shipment> shipment = list1.map((s) => Shipment.fromJson(s)).toList();
      List list2 = responseMap['data']['evidence_data'];
      List<Evidence> evidence = list2.map((e) => Evidence.fromJson(e)).toList();

      Map<String, dynamic> trackingMap = {
        'petition': petition,
        'timeline': timeline,
        'status': status,
        'shipment': shipment,
        'evidence': evidence,
      };

      //Procedimiento - Retornar valor:
      return trackingMap;
    }

    //Procedimiento - Retornar valor:
    return {};
  }
}
