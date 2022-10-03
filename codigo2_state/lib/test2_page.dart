import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {

  bool isTitleBold = true;
  bool isTitleJustified = true;
  double valueSlider = 100.0;
  double valueRedSlider = 100.0;
  double valueGreenSlider = 100.0;
  double valueBlueSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Styles"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Justice League",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: isTitleBold == true ? FontWeight.bold : FontWeight.w100,

              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: isTitleJustified == true ? TextAlign.justify : TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(valueRedSlider.toInt(), valueGreenSlider.toInt(), valueBlueSlider.toInt(), 0.5)
              ),
            ),
            const Divider(),
            // Checkbox(
            //     value: isTitleBold,
            //     onChanged: (bool? value) {
            //       isTitleBold = value!;
            //       setState(() {
            //
            //       });
            //     }
            // )
            CheckboxListTile(
                title: Text("Title bold:"),
                value: isTitleBold,
                onChanged: (bool? value) {
                  isTitleBold = value!;
                  setState(() {

                  });
                }
            ),
            CheckboxListTile(
                title: Text("Title justify:"),
                value: isTitleJustified,
                onChanged: (bool? value) {
                  isTitleJustified = value!;
                  setState(() {

                  });
                }
            ),
            const Divider(),
            Text("Red (${valueRedSlider.toInt()})"),
            Slider(
                value: valueRedSlider,
                min: 0,
                max: 255,
                label: "Rojo:",
                divisions: 10,
                onChanged: (double value) {
                  valueRedSlider = value;
                  setState(() {

                  });
                }
            ),
            Text("Green (${valueGreenSlider.toInt()})"),
            Slider(
                value: valueGreenSlider,
                min: 0,
                max: 255,
                label: "Verde:",
                divisions: 10,
                onChanged: (double value) {
                  valueGreenSlider = value;
                  setState(() {

                  });
                }
            ),
            Text("Blue (${valueBlueSlider.toInt()})"),
            Slider(
                value: valueBlueSlider,
                min: 0,
                max: 255,
                label: "Azul:",
                divisions: 10,
                onChanged: (double value) {
                  valueBlueSlider = value;
                  setState(() {

                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
