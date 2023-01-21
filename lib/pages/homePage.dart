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
        backgroundColor: Color.fromARGB(171, 54, 51, 77),
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
                          GoogleFonts.oswald(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )),
                      Container(
                          child: const Icon(Icons.more_vert_rounded,
                              size: 30, color: Colors.white))
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
                child: Container(
                  child: const TabBarView(
                    children: [
                      AllPage(),
                      Center(child: Text('Content of Tab 2')),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
