import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  AllPage({Key? key}) : super(key: key);

  List<String> notes = [
    "Hello",
    "This",
    "Is",
    "A",
    "Note",
    "List",
    "Hello",
    "This",
    "Is",
    "A",
    "Note",
    "List",
    "Hello",
    "This",
    "Is",
    "A",
    "Note",
    "List"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
          itemCount: notes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 58, 71),
                  borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(notes[index]),
              ),
            );
          }),
    );
  }
}
