//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/models/tracking_model.dart';
import 'package:warehousing_project_app/services/application/application_service.dart';
import 'package:warehousing_project_app/models/user_model.dart';
import 'package:warehousing_project_app/services/shipment/shipment_tracking.dart';
import 'package:warehousing_project_app/ui/widgets/toast_widget.dart';
import 'package:warehousing_project_app/utils/constants_util.dart';
import 'package:warehousing_project_app/utils/assets_util.dart';
import 'package:warehousing_project_app/ui/general/colors_general.dart';
import 'package:warehousing_project_app/ui/widgets/button_custom_widget.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';
import 'package:warehousing_project_app/ui/widgets/textfield_custom_widget.dart';
import 'package:warehousing_project_app/ui/pages/home_page.dart';

class TrackingPage extends StatefulWidget {
  //Declaración de constructor:
  TrackingPage({required this.user});

  //Declaración de atributos:
  User user;

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  //Declaración de variables:
  final TextEditingController _searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  Widget responseTracking = Container();

  //Función de clase - Inicio de sesión:
  Future _search(BuildContext context) async {
    //Establecer condición - Validar estado de formulario:
    if (_formKey.currentState!.validate()) {
      //Declaración de variables:
      User user = widget.user;
      String _search = _searchController.text;
      isLoading = true;

      //Procedimiento - Cambiar estado:
      setState(() {});

      //Procedimiento - Instanciación de objeto:
      TrackingService apiService = TrackingService();

      //Función de clase - Inicio de sesión:
      Map? tracking = await apiService.registerSearch(
          user.user, user.userToken, user.idempresa, _search);

      //Declaración de variables:
      isLoading = false;

      //Establecer condición - Validar respuesta:
      if (tracking != null) {
        //Declaración de variables:
        Petition petition = tracking['petition'];
        Timeline timeline = tracking['timeline'];
        Status status = tracking['status'];
        List<Shipment> shipment = tracking['shipment'];
        List<Evidence> evidence = tracking['evidence'];
        print(evidence);
        //Declaración de variables:
        responseTracking = Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Timeline",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          spacing3,
                          Row(
                            children: [
                              Icon(Icons.warehouse),
                              spacingWidth6,
                              Text(
                                "Recepción de pedido: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                timeline.dateCreation,
                              )
                            ],
                          ),
                          spacing6,
                          Row(
                            children: [
                              Icon(Icons.upload_file_outlined),
                              spacingWidth6,
                              Text(
                                "Inicio de preparación: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                timeline.dateWarehouseOrder.toString(),
                              )
                            ],
                          ),
                          spacing6,
                          Row(
                            children: [
                              Icon(Icons.fire_truck),
                              spacingWidth6,
                              Text(
                                "Despacho: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                timeline.dateShipFromWarehouse.toString(),
                              )
                            ],
                          ),
                          spacing6,
                          Row(
                            children: [
                              Icon(Icons.check),
                              spacingWidth6,
                              Text(
                                "Entrega: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                (timeline.dateShipFromWarehouse
                                        .toString()
                                        .isEmpty)
                                    ? "Pendiente"
                                    : timeline.dateShipFromWarehouse.toString(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  spacing10,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            "Resumen de petición:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          spacing3,
                          Row(
                            children: const [
                              Text(
                                "Destinatario: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          spacing3,
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  petition.recieverName,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ],
                          ),
                          spacing3,
                          Row(
                            children: [
                              const Text(
                                "Pedido: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(petition.petitionCode),
                            ],
                          ),
                          spacing3,
                          Row(
                            children: [
                              const Text(
                                "Servicio: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(petition.petitionservice),
                            ],
                          ),
                          spacing3,
                          Row(
                            children: const [
                              Text(
                                "Dirección de entrega: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          spacing3,
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  petition.shipmentDirection,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(petition.shipmentDpto),
                              spacingWidth3,
                              Text(petition.shipmentProv),
                              spacingWidth3,
                              Text(petition.shipmentDist),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  spacing10,
                ],
              ),
              spacing10,
            ],
          ),
        );

        //Procedimiento - Cambiar estado:
        setState(() {});
      } else {
        //Procedimiento - Cambiar estado:
        setState(() {});

        //Procedimiento - Notificación:
        ScaffoldMessenger.of(context).showSnackBar(ToastWidget(
            "Trazabilidad no encontrada. Inténtalo nuevamente.", false));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tracking",
                      style: TextStyle(
                          color: kFontPrimaryColor.withOpacity(0.8),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    spacing6,
                    Text(
                      "Búsqueda de trazabilidad de pedidos",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: kFontPrimaryColor.withOpacity(0.60),
                          letterSpacing: 0.05),
                    ),
                    spacing10,
                  ],
                ),
                spacing30,
                TextFieldCustomWidget(
                  label: "Pedido:",
                  hintText: "Ingrese su pedido",
                  inputTypeEnum: InputTypeEnum.user,
                  controller: _searchController,
                ),
                spacing30,
                ButtonCustomWidget(
                    text: "Busqueda", onTap: () => _search(context)),
                spacing30,
                !isLoading
                    ? responseTracking
                    : const Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.3,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
