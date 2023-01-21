import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(171, 54, 51, 77),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 45, left: 10,right: 10,bottom: 0),
              child: Column(
                children: [
                  Container(
                    child: Image(image: AssetImage("lib/assets/notepad.png")),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Daily Notes",
                          style: GoogleFonts.pacifico(
                            fontSize: 40,
                            color: Color.fromARGB(179, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Take notes, reminders, set targets , collect resources and secure privacy",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Color.fromARGB(132, 255, 255, 255),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 79, 75, 189),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Color.fromARGB(255, 59, 64, 94), blurRadius: 25.0,spreadRadius: 5.0),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Get Started",
                                style: GoogleFonts.signika(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_right_rounded,
                                color: Colors.white,
                                size: 35,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
