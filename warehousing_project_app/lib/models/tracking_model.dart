//Procedimiento - Importar referencias:
import 'dart:convert';

//Clase - Trazabilidad:
abstract class Tracking {}

//Clase - Linea de tiempo:
class Timeline extends Tracking {
  //Constructor de clase:
  Timeline({
    required this.dateCreation,
    this.dateEstimatedArrival,
    this.dateWarehouseOrder,
    this.datePicking,
    this.datePrintBilling,
    this.dateShipFromWarehouse,
    this.dateArrivalToBase,
    this.dateOutToShip,
    this.observationDateOutToShip,
    this.dateVisit1,
    this.observationDateVisit1,
    this.dateVisit2,
    this.observationDateVisit2,
    this.dateVisit3,
    this.observationDateVisit3,
    this.dateArrival,
    this.observationDateArrival,
    this.courierDocumentValue,
  });

  //Atributos de clase:
  String dateCreation;
  String? dateEstimatedArrival;
  String? dateWarehouseOrder;
  String? datePicking;
  String? datePrintBilling;
  String? dateShipFromWarehouse;
  String? dateArrivalToBase;
  String? dateOutToShip;
  String? observationDateOutToShip;
  String? dateVisit1;
  String? observationDateVisit1;
  String? dateVisit2;
  String? observationDateVisit2;
  String? dateVisit3;
  String? observationDateVisit3;
  String? dateArrival;
  String? observationDateArrival;
  String? courierDocumentValue;

  //Función - Crear un modelo desde un JSON:
  factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        dateCreation: json['fechaemision'],
        dateEstimatedArrival: json['fechaentrega_est'],
        dateWarehouseOrder: json['fechacargawms'],
        datePicking: json['fechapkg'],
        datePrintBilling: json['fechaguiarem'],
        dateShipFromWarehouse: json['fechadespacho'],
        dateArrivalToBase: json['fecharecepcioncourier'],
        dateOutToShip: json['fecharuta'],
        observationDateOutToShip: json['obsfecharuta'],
        dateVisit1: json['fechavisita1'],
        observationDateVisit1: json['obsfechavisita1'],
        dateVisit2: json['fechavisita2'],
        observationDateVisit2: json['obsfechavisita2'],
        dateVisit3: json['fechavisita3'],
        observationDateVisit3: json['obsfechavisita3'],
        dateArrival: json['fechaentregado'],
        observationDateArrival: json['obsfechaentregado'],
        courierDocumentValue: json['numguia_tra'],
      );
}

//Clase - Estado:
class Status extends Tracking {
  //Constructor de clase:
  Status({
    required this.statusCode,
    required this.status,
    required this.statusGeneralCode,
    required this.statusGeneral,
  });

  //Atributos de clase:
  String statusCode;
  String status;
  String statusGeneralCode;
  String statusGeneral;

  //Función - Crear un modelo desde un JSON:
  factory Status.fromJson(Map<String, dynamic> json) => Status(
        statusCode: json['codresultado'],
        status: json['nomestado'],
        statusGeneralCode: json['codresultado_gral'],
        statusGeneral: json['nomestado_gral'],
      );
}

//Clase - Petición:
class Petition extends Tracking {
  //Constructor de clase:
  Petition({
    required this.petitionCode,
    required this.petitionPriority,
    required this.petitionservice,
    required this.shipmentDirection,
    this.shipmentDirectionReference,
    required this.shipmentDpto,
    required this.shipmentProv,
    required this.shipmentDist,
    this.petitionCommentary,
    required this.recieverName,
    required this.recieverId,
    this.recieverTelephone,
    this.recieverCodePetition,
    this.latitude,
    this.longitude,
  });

  //Atributos de clase:
  String petitionCode;
  String petitionPriority;
  String petitionservice;
  String shipmentDirection;
  String? shipmentDirectionReference;
  String shipmentDpto;
  String shipmentProv;
  String shipmentDist;
  String? petitionCommentary;
  String recieverName;
  String recieverId;
  String? recieverTelephone;
  String? recieverCodePetition;
  String? latitude;
  String? longitude;

  //Función - Crear un modelo desde un JSON:
  factory Petition.fromJson(Map<String, dynamic> json) => Petition(
        petitionCode: json['codpedido'],
        petitionPriority: json['nomprioridad'],
        petitionservice: json['nomservicio'],
        shipmentDirection: json['dirpedido'],
        shipmentDirectionReference: json['refpedido'],
        shipmentDpto: json['nomdpto'],
        shipmentProv: json['nomprov'],
        shipmentDist: json['nomdist'],
        petitionCommentary: json['comentarioped'],
        recieverName: json['nomcliente'],
        recieverId: json['idcliente'],
        recieverTelephone: json['numtelefono'],
        recieverCodePetition: json['codoc'],
        latitude: json['codlatitud'],
        longitude: json['codlongitud'],
      );
}

//Clase - Despacho:
class Shipment extends Tracking {
  //Constructor de clase:
  Shipment({
    required this.shipmentDate,
    required this.shipmentManifestCode,
    required this.transportCode,
    required this.petitionManifestCode,
    required this.petitionPackageCode,
    required this.boxesLarge,
    required this.boxesMedium,
    required this.boxesSmall,
    required this.boxesKit,
    required this.courierName,
  });

  //Atributos de clase:
  String shipmentDate;
  String shipmentManifestCode;
  String transportCode;
  String petitionManifestCode;
  String petitionPackageCode;
  int boxesLarge;
  int boxesMedium;
  int boxesSmall;
  int boxesKit;
  String courierName;

  //Función - Crear un modelo desde un JSON:
  factory Shipment.fromJson(Map<String, dynamic> json) => Shipment(
        shipmentDate: json['fechadespacho'],
        shipmentManifestCode: json['codpackinglist'],
        transportCode: json['codplaca'],
        petitionManifestCode: json['numguia'],
        petitionPackageCode: json['numembalaje'],
        boxesLarge: json['numa'],
        boxesMedium: json['numb'],
        boxesSmall: json['numc'],
        boxesKit: json['numd'],
        courierName: json['nomcourier'],
      );
}

class Evidence extends Tracking {
  //Constructor de clase:
  Evidence({required this.fileName, required this.fileType});

  //Atributos de clase:
  String fileName;
  String fileType;

  //Función - Crear un modelo desde un JSON:
  factory Evidence.fromJson(Map<String, dynamic> json) => Evidence(
        fileName: json['nomarchivo'] ?? "",
        fileType: json['type_reg'] ?? "",
      );
}
