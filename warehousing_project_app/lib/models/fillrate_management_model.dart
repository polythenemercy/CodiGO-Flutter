//Clase - Gestión de fill-rate:
class FillrateManagement {
  //Constructor de clase:
  FillrateManagement({
    required this.idempresa,
    required this.nomempresa,
    required this.year,
    required this.petitionTotal,
    required this.requiredUnits,
    required this.suppliedUnits,
    required this.fillratePercentage,
  });

  //Atributos de clase:
  int idempresa;
  String nomempresa;
  String year;
  String petitionTotal;
  String requiredUnits;
  String suppliedUnits;
  String fillratePercentage;

  //Función - Crear un modelo desde un JSON:
  factory FillrateManagement.fromJson(Map<String, dynamic> json) =>
      FillrateManagement(
        idempresa: json['idempresa'],
        nomempresa: json['nomempresa'],
        year: json['year'],
        petitionTotal: json['totalpedidos'],
        requiredUnits: json['totalrequerido'],
        suppliedUnits: json['totalatendido'],
        fillratePercentage: json['totalfillrate'],
      );
}
