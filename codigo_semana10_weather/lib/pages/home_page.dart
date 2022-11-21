
import 'dart:convert';

import 'package:codigo_semana10_weather/widgets/item_forecast_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  getData () async {

    Uri _url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=london&appid=5e28b4f29011a9bf0f03a96edb6598cf");

    http.Response response = await http.get(_url);
    json.decode(source);
    print(response);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232535),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  Icons.location_on
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/dom.png',
                height: 50.0,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "26",
                    style: TextStyle(
                      fontSize: 80.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "°C",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Arequipa, Perú",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 16.0
                  ),
                  hintText: "Ingrese una ciudad",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 14.0
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.12),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide.none
                  )
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFE6C6D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)
                      )
                    ),
                    child: Text(
                      "Buscar",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                ),
              ),

              SizedBox(
                height: 18.0,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                    ItemForecastWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 32,
                    horizontal: 14.0
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.09),
                  borderRadius: BorderRadius.circular(14.0)
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "14 minutes ago",
                          style: TextStyle(
                            color: Colors.white60
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -80,
                      right: -10,
                      child: Image.asset(
                        "assets/images/nube.png",
                        height: 100.0,
                      ),
                    ),
                  ],
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}
