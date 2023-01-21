import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);

  void doSomething(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                spacing: 20.0,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 103, 69, 156),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 69, 56, 92),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 137, 128, 150),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 137, 128, 150),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 137, 128, 150),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 137, 128, 150),
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {
                  print("Button Clicked");
                },
                child: Icon(Icons.add),
              ),
            )
          ],
        ));
  }
}
