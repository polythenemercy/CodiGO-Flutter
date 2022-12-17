//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/models/stock_model.dart';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/services/warehouse/warehouse_stock_service.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';

class StockPage extends StatelessWidget {
  //Declaración de atributos:
  User user;

  //Declaración de constructor:
  StockPage({required this.user});

  //Declaración de variables:
  StockService apiService = StockService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Stock",
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
                    user.user, user.userToken, user.idempresa),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  //Establecer condición - Validar respuesta:
                  if (snap.hasData) {
                    //Declaración de variables:
                    List<Stock> listData = snap.data;

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
                                  "Sector: ",
                                  style: TextStyle(
                                      color: Colors.red.withOpacity(0.80),
                                      fontSize: 15.0),
                                ),
                                Flexible(
                                  child: Text(
                                    "[${listData[index].sectorCode}] ${listData[index].sectorName}",
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
                                      "Almacén: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].warehouseName,
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
                                      "Artículos almacenados: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].articlesStored,
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
                                      "Total und.: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].articlesUnits,
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
                                      "Ubicaciones en uso: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].positionsUsed,
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
                                      "Contenedores en uso: ",
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontSize: 13.0),
                                    ),
                                    Text(
                                      listData[index].storageUsed,
                                      style: TextStyle(
                                          color: kFontPrimaryColor
                                              .withOpacity(0.55),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
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
