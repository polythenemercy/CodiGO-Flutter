import 'package:codigo_semana6/widgets/form_modal_widget.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {

  void showAlert1(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.2),
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            contentPadding: EdgeInsets.zero,
            content: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/figma.png',
                    height: 70.0,
                  ),
                  Text(
                    "Blog Post Published",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Cancelar",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Confirmar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff7E56DA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  void showAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
            ),
            content: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.pexels.com/photos/1085517/pexels-photo-1085517.jpeg",),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Your video has been uploaded!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Your video has finished uploading and is live",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black.withOpacity(0.60),
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Share link",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.9)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26.withOpacity(0.16)
                            ),
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: const Text(
                            "https://google.com",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      OutlinedButton.icon(
                        onPressed: () {

                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        icon: Icon(Icons.link),
                        label: Text(
                          "Copy link",
                          style: TextStyle(
                            fontSize: 13.0
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Cancelar",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Confirmar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff7E56DA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  void showAlert3(BuildContext context) {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormModalWidget();
        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerta",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.black,
              child:
                  const Text("Alert 1", style: TextStyle(color: Colors.white)),
              onPressed: () => showAlert1(context),
            ),
            MaterialButton(
              color: Colors.black,
              child:
                  const Text("Alert 2", style: TextStyle(color: Colors.white)),
              onPressed: () => showAlert2(context),
            ),
            MaterialButton(
              color: Colors.black,
              child:
              const Text("Alert 3", style: TextStyle(color: Colors.white)),
              onPressed: () => showAlert3(context),
            ),
          ],
        ),
      ),
    );
  }
}
