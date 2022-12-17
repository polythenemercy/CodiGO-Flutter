
//Clase - Usuario:
class User {

  //Constructor de clase:
  User({
    required this.user,
    this.password,
    required this.userName,
    this.userEmail,
    required this.userType,
    required this.userArea,
    required this.userToken,
    required this.idempresa,
    required this.nomempresa
  });

  //Atributos de clase:
  String user;
  String? password;
  String userName;
  String? userEmail;
  String userType;
  String userArea;
  String userToken;
  int idempresa;
  String nomempresa;

  //Función - Crear un modelo desde un JSON:
  factory User.fromJson(Map<String, dynamic> json) => User(
      user: json['cod_usuario'],
      password: json['cod_contrasena'] ?? "",
      userName: json['nom_usuario'],
      userEmail: json['email_usuario'],
      userType: json['type_usuario'],
      userArea: json['id_area'],
      userToken: json['token_usuario'],
      idempresa: json['id_empresa'],
      nomempresa: json['nom_empresa'],
  );

}