import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octavia_native/pages/tabPages/allPage.dart';
import 'package:octavia_native/pages/addNotePage.dart';
import 'package:page_transition/page_transition.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Color.fromARGB(255, 38, 35, 61),
//         body: Container(
//           padding: EdgeInsets.only(top: 40),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       child: Text(
//                         "Notes",
//                         style:
//                             GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
//                       ),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                             margin: EdgeInsets.only(right: 20),
//                             child: const Icon(
//                               Icons.search,
//                               color: Color.fromARGB(169, 255, 255, 255),
//                               size: 30,
//                             )),
//                         Container(
//                             child: const Icon(Icons.more_vert_rounded,
//                                 size: 30, color: Color.fromARGB(169, 255, 255, 255)))
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20,),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 constraints: const BoxConstraints.expand(height: 50),
//                 child:  TabBar(
//                   labelStyle: GoogleFonts.lato(fontSize: 20),
//                   unselectedLabelStyle: GoogleFonts.lato(fontSize: 15),
//                   labelColor: Color.fromARGB(255, 235, 235, 108),
//                   unselectedLabelColor: Color.fromARGB(255, 168, 168, 168),
//                   indicatorColor: Color.fromARGB(255, 235, 235, 108),
//                   indicatorSize: TabBarIndicatorSize.label,
//                   tabs: [
//                     Tab(text: 'All'),
//                     Tab(text: 'Folders'),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Stack(
//                   children: [Container(
//                     child: TabBarView(
//                       children: [
//                         AllPage(),
//                         Center(child: Text('Content of Folder tab')),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                           bottom: 40,
//                           right: 10,
//                           child: FloatingActionButton(
//                             backgroundColor: Color.fromARGB(255, 79, 75, 189),
//                             onPressed: (){
//                               Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: AddNotePage()));
//                             },
//                             child:Icon(Icons.add),
//                           ),
//                         )]
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

   @override
   State<HomePage> createState() => _HomePageState();
}

 class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
    late TabController _controller;
    int _selectedIndex = 0;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: 2, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
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
                       style: GoogleFonts.pacifico(
                           fontSize: 30, color: Colors.white),
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
                               size: 30,
                               color: Color.fromARGB(169, 255, 255, 255)))
                     ],
                   )
                 ],
               ),
             ),
             const SizedBox(
               height: 20,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20),
               constraints: const BoxConstraints.expand(height: 50),
               child: TabBar(
                onTap: (index){},
                 controller: _controller,
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
               child: Stack(children: [
                 Container(
                   child: TabBarView(
                     controller: _controller,
                     children: [
                       AllPage(),
                       Center(child: Text('Content of Folder tab')),
                     ],
                   ),
                 ),
                 Positioned(
                   bottom: 40,
                   right: 10,
                   child: FloatingActionButton(
                     backgroundColor: Color.fromARGB(255, 79, 75, 189),
                     onPressed: () {
                       Navigator.push(
                           context,
                           PageTransition(
                               type: PageTransitionType.bottomToTop,
                               child: AddNotePage()));
                     },
                     child: (_selectedIndex==0)?Icon(Icons.add):Icon(Icons.folder),
                   ),
                 )
               ]),
             )
           ],
         ),
       ),
     );
   }
 }

// class TabBarDemo extends StatefulWidget {
//   @override
//   _TabBarDemoState createState() => _TabBarDemoState();
// }

// class _TabBarDemoState extends State<TabBarDemo>
//     with SingleTickerProviderStateMixin {
//   late TabController _controller;
//   int _selectedIndex = 0;

//   List<Widget> list = [
//     Tab(icon: Icon(Icons.card_travel)),
//     Tab(icon: Icon(Icons.add_shopping_cart)),
//   ];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // Create TabController for getting the index of current tab
//     _controller = TabController(length: list.length, vsync: this);

//     _controller.addListener(() {
//       setState(() {
//         _selectedIndex = _controller.index;
//       });
//       print("Selected Index: " + _controller.index.toString());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             onTap: (index) {
//               // Should not used it as it only called when tab options are clicked,
//               // not when user swapped
//             },
//             controller: _controller,
//             tabs: list,
//           ),
//           title: Text('Tabs Demo'),
//         ),
//         body: TabBarView(
//           controller: _controller,
//           children: [
//             Center(
//                 child: Text(
//                   _selectedIndex.toString(),
//                   style: TextStyle(fontSize: 40),
//                 )),
//             Center(
//                 child: Text(
//                   _selectedIndex.toString(),
//                   style: TextStyle(fontSize: 40),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//   }