import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octavia_native/pages/tabPages/allPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 38, 35, 61),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 20,right: 20,bottom: 0),
          child: Column(
            children: <Widget>[
              Row(
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
              const SizedBox(height: 20,),
              Container(
                constraints: const BoxConstraints.expand(height: 50),
                child: const TabBar(
                  indicatorColor: Colors.yellowAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.yellow,
                  unselectedLabelColor: Color.fromARGB(255, 168, 168, 168),
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
                            onPressed: (){},
                            child: Icon(Icons.add_box),
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
