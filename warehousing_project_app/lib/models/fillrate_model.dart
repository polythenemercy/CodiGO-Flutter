//Clase - Fill-rate:
class Fillrate {
  //Constructor de clase:
  Fillrate({
    required this.idempresa,
    required this.nomempresa,
    required this.week,
    required this.petitionTotal,
    required this.requiredUnits,
    required this.suppliedUnits,
    required this.fillratePercentage,
  });

  //Atributos de clase:
  int idempresa;
  String nomempresa;
  String week;
  String petitionTotal;
  String requiredUnits;
  String suppliedUnits;
  String fillratePercentage;

  //Función - Crear un modelo desde un JSON:
  factory Fillrate.fromJson(Map<String, dynamic> json) => Fillrate(
        idempresa: json['idempresa'],
        nomempresa: json['nomempresa'],
        week: json['fechasemana'],
        petitionTotal: json['totalpedidos'].toString(),
        requiredUnits: json['totalrequerido'].toString(),
        suppliedUnits: json['totalatendido'].toString(),
        fillratePercentage: json['totalfillrate'].toString(),
      );
}
