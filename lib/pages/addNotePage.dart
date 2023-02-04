import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  String description = "";
  int wordLength = 0;
  @override
  Widget build(BuildContext context) {
    String day =  DateFormat.EEEE('en_US').format(DateTime.now());
    String date =  DateFormat.yMMMMd('en_US').format(DateTime.now());
    String time = DateFormat.jm().format(DateTime.now());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 35, 61),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(
                            132,
                            255,
                            255,
                            255,
                          ),
                          size: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Back",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Color.fromARGB(132, 255, 255, 255),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.save_alt,
                      color: Color.fromARGB(
                        132,
                        255,
                        255,
                        255,
                      ),
                      size: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Done",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Color.fromARGB(132, 255, 255, 255),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Title",
                  hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 156, 156, 156), fontSize: 30),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 212, 212, 212), fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                  textAlign: TextAlign.left,
                  "$day, $date at $time | $wordLength Words",
                  style: GoogleFonts.lato(
                      color: Color.fromARGB(255, 168, 168, 168), fontSize: 15)),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 156, 156, 156), fontSize: 17),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
              maxLines: null,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 212, 212, 212), fontSize: 17),
              onChanged: (value) => {
                setState(()=>{
                  description=value,
                  wordLength = (value=="")?0:value.split(" ").length
                })
              },
            )
          ],
        ),
      ),
    );
  }
}
