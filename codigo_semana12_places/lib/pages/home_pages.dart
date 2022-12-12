import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:codigo_semana12_places/utils/map_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late GoogleMapController googleMapController;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  List<LatLng> _positions = [];

  @override
  initState () {
    super.initState();

    currentPosition();
  }

  Future<CameraPosition> initCurrentPosition () async {
    Position currentPosition = await Geolocator.getCurrentPosition();

    return CameraPosition(
      zoom: 15,
      target: LatLng(currentPosition.latitude, currentPosition.longitude)
    );
  }

  Future<void> moveCamera () async {
    Position currentPosition = await Geolocator.getCurrentPosition();

    CameraUpdate cameraUpdate = CameraUpdate.newLatLng(
      LatLng(currentPosition.latitude, currentPosition.longitude)
    );

    googleMapController.animateCamera(
      cameraUpdate
    );
  }

  Future<Uint8List> imageToBytes (String path, {bool fromNetwork = false, int width = 100}) async {

    late Uint8List bytes;

    //Establaecer condición - Validar modo:
    if (fromNetwork) {

      File file = await DefaultCacheManager().getSingleFile(path);
      bytes = await file.readAsBytes();

    } else {

      ByteData byteData = await rootBundle.load(path);
      bytes = byteData.buffer.asUint8List();

    }

    final codec = await ui.instantiateImageCodec(
      bytes,
      targetWidth: width
    );

    ui.FrameInfo frame = await codec.getNextFrame();

    ByteData? myByteData = await frame.image.toByteData(
      format: ui.ImageByteFormat.png
    );

    return myByteData!.buffer.asUint8List();

  }

  currentPosition () async {

    BitmapDescriptor positionIcon = BitmapDescriptor.fromBytes(
      await imageToBytes(
        "https://cdn-icons-png.flaticon.com/512/0/798.png",
        fromNetwork: true,
        width: 120
      )
    );
    Polyline myPolyline = Polyline(
      polylineId: PolylineId("my_route"),
      points: _positions,
      color: Colors.pinkAccent,
      width: 7
    );

    _polylines.add(myPolyline);

    Geolocator.getPositionStream().listen((Position event) {

      LatLng latLng = LatLng(event.latitude, event.longitude);

      _positions.add(latLng);
      Marker positionMarker = Marker(
        markerId: const MarkerId("positionMarker"),
        position: latLng,
        icon: positionIcon
      );
      _markers.add(positionMarker);

      setState(() {

      });

    });
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder(
        future: initCurrentPosition(),
        builder: (BuildContext context, AsyncSnapshot snap) {

          if (snap.hasData) {
            CameraPosition cameraPosition = snap.data;

            return Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: cameraPosition,
                  myLocationEnabled: false,
                  myLocationButtonEnabled: false,

                  //mapType: MapType.normal,
                  onMapCreated: (GoogleMapController controller) {

                    googleMapController = controller;

                    googleMapController.setMapStyle(jsonEncode(mapStyle));

                  },
                  markers: _markers,
                  polylines: _polylines,
                  onTap: (LatLng position) async {
                    MarkerId myMarkerId = MarkerId(_markers.length.toString());
                    Marker myMarker = Marker(
                      markerId: myMarkerId,
                      position: position,
                      rotation: 0,
                      draggable: false,
                      //icon: BitmapDescriptor.defaultMarkerWithHue(
                      //  BitmapDescriptor.hueOrange
                      //),
                      icon: await BitmapDescriptor.fromAssetImage(
                        ImageConfiguration(),
                        'assets/images/marker.png',
                      )
                      //icon: BitmapDescriptor.fromBytes(
                      //  await imageToBytes(
                      //    "https://cdn-icons-png.flaticon.com/512/8001/8001157.png",
                      //    fromNetwork: true,
                      //    width: 64
                      //  )
                      //)
                    );

                    _markers.add(myMarker);

                    setState(() {

                    });
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 20.0
                    ),
                    height: 48.0,
                    //width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        )
                      ),
                      onPressed: () => moveCamera(),
                      child: Text("Mi ubicación"),
                    ),
                  ),
                ),
              ],
            );

          }

          return Center(
            child: CircularProgressIndicator(),
          );

        },
      ),
    );
  }
}
