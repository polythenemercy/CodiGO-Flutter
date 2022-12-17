import 'dart:convert';

//Clase - Stock:
class Stock {
  //Constructor de clase:
  Stock(
      {required this.idempresa,
      required this.nomempresa,
      required this.warehouseCode,
      required this.warehouseName,
      required this.sectorCode,
      required this.sectorName,
      required this.articlesStored,
      required this.positionsUsed,
      required this.storageUsed,
      required this.articlesUnits});

  //Atributos de clase:
  int idempresa;
  String nomempresa;
  String warehouseCode;
  String warehouseName;
  String sectorCode;
  String sectorName;
  String articlesStored;
  String positionsUsed;
  String storageUsed;
  String articlesUnits;

  //Función - Crear un modelo desde un JSON:
  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
        idempresa: json['idempresa'],
        nomempresa: json['nomempresa'],
        warehouseCode: json['codalmacen'],
        warehouseName: json['nomalmacen'],
        sectorCode: json['codsector'],
        sectorName: json['nomsector'],
        articlesStored: json['articles_stored'].toString(),
        positionsUsed: json['logistic_positions'].toString(),
        storageUsed: json['logistic_units'].toString(),
        articlesUnits: json['articles_units'],
      );
}
