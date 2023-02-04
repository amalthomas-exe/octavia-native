import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octavia_native/pages/tabPages/allPage.dart';
import 'package:octavia_native/pages/addNotePage.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 38, 35, 61),
        body: Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Notes",
                        style:
                            GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: const Icon(
                              Icons.search,
                              color: Color.fromARGB(169, 255, 255, 255),
                              size: 30,
                            )),
                        Container(
                            child: const Icon(Icons.more_vert_rounded,
                                size: 30, color: Color.fromARGB(169, 255, 255, 255)))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                constraints: const BoxConstraints.expand(height: 50),
                child:  TabBar(
                  labelStyle: GoogleFonts.lato(fontSize: 20),
                  unselectedLabelStyle: GoogleFonts.lato(fontSize: 15),
                  labelColor: Color.fromARGB(255, 235, 235, 108),
                  unselectedLabelColor: Color.fromARGB(255, 168, 168, 168),
                  indicatorColor: Color.fromARGB(255, 235, 235, 108),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Folders'),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [Container(
                    child: TabBarView(
                      children: [
                        AllPage(),
                        Center(child: Text('Content of Tab 2')),
                      ],
                    ),
                  ),
                  Positioned(
                          bottom: 40,
                          right: 10,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 79, 75, 189),
                            onPressed: (){
                              Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: AddNotePage()));
                            },
                            child:Icon(Icons.add),
                          ),
                        )]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}