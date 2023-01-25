import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octavia_native/pages/homePage.dart';
class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  void doSomething(BuildContext context){
    print("Clickr");
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(171, 54, 51, 77),
      body: Stack(children: [
        Positioned(
          top: 200,
          left: MediaQuery.of(context).size.width / 8,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Color.fromARGB(169, 79, 75, 189),
            ),
          ),
        ),
        Column(
          children: [
            Container(
                padding:
                    EdgeInsets.only(top: 45, left: 10, right: 10, bottom: 0),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 400,
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
                          const SizedBox(
                            height: 55,
                          ),
                          GestureDetector(
                            onTap: (){
                              doSomething(context);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 85),
                              padding: EdgeInsets.symmetric(vertical: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(255, 79, 75, 189),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 59, 64, 94),
                                      blurRadius: 25.0,
                                      spreadRadius: 5.0),
                                ],
                              ),
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Get Started",
                                      style: GoogleFonts.signika(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    const Icon(
                                      Icons.arrow_right_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}
