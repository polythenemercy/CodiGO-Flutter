//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';

//Declaración de variables:
const String pathProduction = 'http://appweb.kpilogistica.com.pe/api/data/flutter';
enum InputTypeEnum {
  user,
  password,
}

Map<InputTypeEnum, TextInputType> inputTypeMap = {
  InputTypeEnum.user : TextInputType.text,
  InputTypeEnum.password : TextInputType.text,
};