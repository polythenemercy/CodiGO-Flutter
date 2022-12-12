import 'package:codigo_semana12_places/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionPage extends StatefulWidget {

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  checkPermission (PermissionStatus status, BuildContext context) {

    switch (status) {

      case PermissionStatus.granted:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;

      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.limited:
      case PermissionStatus.denied:
        openAppSettings();
        break;

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/gps.png',
              height: 140,
            ),
            const Text(
              "Permitir ubicación",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff202644)
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Para poder utilizar todas las funcionalidades de nuestra app debes de activar el GPS.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff202644).withOpacity(0.70),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
              onPressed: () async {

                PermissionStatus status = await Permission.location.request();

                checkPermission(status, context);

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff202644),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              child: Text("Activar GPS",),
            )
          ],
        ),
      ),
    );
  }
}
