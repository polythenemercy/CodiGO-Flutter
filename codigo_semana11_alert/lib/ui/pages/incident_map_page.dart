import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../models/incident_model.dart';

class IncidentMapPage extends StatefulWidget {
  List<IncidentModel> incidentList;

  IncidentMapPage({
    required this.incidentList
  });

  @override
  State<IncidentMapPage> createState() => _IncidentMapPageState();
}

class _IncidentMapPageState extends State<IncidentMapPage> {
  Set<Marker> _markers = {};

  @override
  initState () {
    super.initState();

    buildMarkers();
  }

  buildMarkers () {
    for (var item in widget.incidentList) {

      Marker marker = Marker(
        markerId: MarkerId(_markers.length.toString()),
        position: LatLng(item.latitud, item.longitud),
        onTap: () => print(item.tipoIncidente.title)
      );

      _markers.add(marker);

    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(-11.261080, -76.331244),
                  zoom: 6.5
              ),
              markers: _markers,
              onTap: (LatLng position) {

                Marker myMarker = Marker(
                    markerId: MarkerId(_markers.length.toString()),
                    position: position,
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueRed
                    )
                );

                _markers.add(myMarker);

                setState(() {

                });

              }
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: widget.incidentList.map((e) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 14.0
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 12.0
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        e.tipoIncidente.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "Ciudadano: ${e.datosCiudadano.nombres}",
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                      Text(
                        "Telefono: ${e.datosCiudadano.telefono}",
                        style: TextStyle(
                            fontSize: 12.0
                        ),
                      ),
                      Text(
                        "Hora: ${e.hora}",
                        style: TextStyle(
                            fontSize: 12.0
                        ),
                      ),
                      Text(
                        "Fecha: ${e.fecha}",
                        style: TextStyle(
                            fontSize: 12.0
                        ),
                      ),
                    ],
                  ),
                )).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
