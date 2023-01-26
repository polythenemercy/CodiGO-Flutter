import 'package:codigo_semana11_alert/services/api_service.dart';
import 'package:codigo_semana11_alert/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import '../../models/citizen_model.dart';
import '../general/colors.dart';

class CitizenPage extends StatelessWidget {

  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de ciudadanos",
                style: TextStyle(
                    color: kFontPrimaryColor.withOpacity(0.8),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              spacing10,
              FutureBuilder(
                future: apiService.getCitizen(),
                builder: (BuildContext context, AsyncSnapshot snap) {

                  if (snap.hasData) {
                    List<CitizenModel> listData = snap.data;
                    return Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listData.length,
                        separatorBuilder: (context, index) => Divider(
                          indent: 12.0,
                          endIndent: 12.0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              listData[index].fullName,
                              style: TextStyle(
                                  color: kFontPrimaryColor.withOpacity(0.80),
                                  fontSize: 15.0
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spacing3,
                                Text(
                                  "Direccion: ${listData[index].address}",
                                  style: TextStyle(
                                      color: kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0
                                  ),
                                ),
                                spacing3,
                                Text(
                                  "Telefono: ${listData[index].phone}",
                                  style: TextStyle(
                                      color: kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0
                                  ),
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
