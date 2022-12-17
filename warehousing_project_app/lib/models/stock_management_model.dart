
//Clase - Gestión de stock:
class StockManagement {

  //Atributos de clase:
  int idempresa;
  String nomempresa;
  int warehouseCode;
  String warehouseName;
  int positionsUsed;
  int articlesStored;
  int articlesUnits;
  int? positionsContracted;

  //Constructor de clase:
  StockManagement({
    required this.idempresa,
    required this.nomempresa,
    required this.warehouseCode,
    required this.warehouseName,
    required this.positionsUsed,
    required this.articlesStored,
    required this.articlesUnits,
    this.positionsContracted,
  });

  //Función - Crear un modelo desde un JSON:
  factory StockManagement.fromJson(Map<String, dynamic> json) => StockManagement(
    idempresa: json['idempresa'],
    nomempresa: json['nomempresa'],
    warehouseCode: json['codalmacen'],
    warehouseName: json['nomalmacen'],
    positionsUsed: json['warehousing_used'],
    articlesStored: json['articles_stored'],
    articlesUnits: json['articles_units'],
    positionsContracted: json['warehousing_active'],
  );

}