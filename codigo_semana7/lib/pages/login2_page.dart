import 'package:codigo_semana7/pages/init_page.dart';
import 'package:codigo_semana7/widgets/circle_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login2Page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo:
          Stack(
            children: [
              Positioned(
                right: -100,
                top: -80,
                child: CircleWidget(
                  radius: height * 0.20,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7)
                  ],
                ),
              ),
              Positioned(
                bottom: -130,
                left: -100,
                child: CircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9)
                  ],
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: CircleWidget(
                  radius: 22,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7)
                  ],
                ),
              ),

              Positioned(
                top: height * 0.4,
                right: width * 0.12,
                child: CircleWidget(
                  radius: 16,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9)
                  ],
                ),
              ),
            ],

          ),
          //Formulario:
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Text("Create your account!"),
                  TextField(

                  ),
                  TextField(

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 56.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffD94E8E).withOpacity(0.65),
                          offset: Offset(0, 4),
                          blurRadius: 12.0
                        )
                      ],
                      gradient: LinearGradient(colors: [
                        Color(0xffE98DB7),
                        Color(0xffD94E8E)
                      ])
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InitPage()));
                      },
                      child: Text("Create account"),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
