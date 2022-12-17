//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/models/fillrate_model.dart';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/services/management/management_fillrate_service.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';

class FillratePage extends StatelessWidget {
  //Declaración de atributos:
  User user;
  String year = "2022";

  //Declaración de constructor:
  FillratePage({required this.user});

  //Declaración de variables:
  FillrateService apiService = FillrateService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Nivel de atención - $year",
                style: TextStyle(
                    color: kFontPrimaryColor.withOpacity(0.8),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              spacing6,
              Text(
                user.nomempresa,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: kFontPrimaryColor.withOpacity(0.60),
                    letterSpacing: 0.05),
              ),
              spacing10,
              FutureBuilder(
                future: apiService.registerSearch(
                    user.user, user.userToken, user.idempresa, year),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  //Establecer condición - Validar respuesta:
                  if (snap.hasData) {
                    //Declaración de variables:
                    List<Fillrate> listData = snap.data;

                    //Procedimiento - Retornar elementos:
                    return Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listData.length,
                        separatorBuilder: (context, index) => const Divider(
                          indent: 12.0,
                          endIndent: 12.0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: Colors.blueGrey.withOpacity(0.25)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  "Semana: ",
                                  style: TextStyle(
                                      color: Colors.red.withOpacity(0.80),
                                      fontSize: 15.0),
                                ),
                                Flexible(
                                  child: Text(
                                    listData[index].week,
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color:
                                            kFontPrimaryColor.withOpacity(0.80),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spacing3,
                                Row(
                                  children: [
                                    Text(
                                      "Nv. atención: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      "${listData[index].fillratePercentage.toString()}%",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
                                spacing3,
                                Row(
                                  children: [
                                    Text(
                                      "Und. requeridas: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].requiredUnits.toString(),
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      " - ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.25),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      "Und. atendidas: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].suppliedUnits.toString(),
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return const Center(
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.3,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
