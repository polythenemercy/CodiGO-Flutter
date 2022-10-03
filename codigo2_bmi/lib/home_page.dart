import 'package:flutter/material.dart';
import 'dart:math';
import 'bmi_brain.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 70;
  double height = 100;
  double imc = 0;
  String status = "";
  int statusImg = 0;
  String statusDescription = "";

  calculateIMC () {

    imc = weight / pow((height/100), 2);
    defineText (imc);
    setState(() {

    });
  }

  defineText (imc) {
    if (imc > 18 && imc < 25) {
      status = "Normal";
      statusImg = 1;
      statusDescription = "¡Buen trabajo! Sigue comiendo saludable y realiza actividad fisica.";
    } else if (imc > 25) {
      status = "Sobrepeso";
      statusImg = 2;
      statusDescription = "¡Alerta! Debes comer saludable y realizar actividad fisica.";
    } else {
      status = "Flaco";
      statusImg = 3;
      statusDescription = "¡Alerta! Debes comer saludable.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "IMC App",
          style: TextStyle(
              fontFamily: 'Source Sans Pro', fontWeight: FontWeight.w100),
        ),
        backgroundColor: const Color(0xff1d3557),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura",
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2b2d42).withOpacity(0.8)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${weight.toInt().toString()}",
                    style:
                        TextStyle(fontSize: 26, fontFamily: 'Source Sans Pro'),
                  ),
                  Text(
                    " Kg.",
                    style: TextStyle(
                        fontSize: 14.0, fontFamily: 'Source Sans Pro'),
                  )
                ]),
            Slider(
                value: weight,
                min: 20,
                max: 200,
                // activeColor: Colors.red,
                // inactiveColor: Colors.purple,
                // thumbColor: Colors.blue,
                onChanged: (double value) {
                  weight = value;

                  setState(() {});
                }),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${height.toInt().toString()}",
                    style:
                    TextStyle(
                        fontSize: 26,
                        fontFamily: 'Source Sans Pro'
                    ),
                  ),
                  Text(
                    " Cm.",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Source Sans Pro'
                    ),
                  )
                ]),
            Slider(
                value: height,
                min: 50,
                max: 220,
                // activeColor: Colors.red,
                // inactiveColor: Colors.purple,
                // thumbColor: Colors.blue,
                onChanged: (double value) {
                  height = value;

                  setState(() {});
                }
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2b2d42)
                  ),
                  onPressed: () {

                    BmiBrain a = BmiBrain(height: height, weight: weight);

                    a.calculateBMI();

                  },
                icon: const Icon(Icons.play_arrow_rounded),
                label: const Text(
                    "Calcular",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(),
            (statusImg > 0) ? Text(
                "Resultado: ",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Color(0xfff2b2d42).withOpacity(0.8),
                fontWeight: FontWeight.w600
              ),
            ) : SizedBox(),
            Center(
              child: (statusImg > 0) ? Image.asset(
                  'assets/images/image${statusImg.toString()}.png',
                height: 180,
                width: 180,
                fit: BoxFit.contain,
              ): SizedBox(),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (statusImg > 0) ? Text(
                    "${imc.toStringAsFixed(1)}",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xfff72585),
                      fontWeight: FontWeight.bold
                    ),
                  ) : SizedBox(),
                  Text(
                    "${status}",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2b2d42).withOpacity(0.8),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "${statusDescription}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2b2d42).withOpacity(0.8),
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
