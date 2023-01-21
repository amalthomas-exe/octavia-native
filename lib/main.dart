import 'package:flutter/material.dart';
import 'package:octavia_native/pages/homePage.dart';
import 'package:octavia_native/pages/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Octavia Notes App',
      home: HomePage(),
    );
  }
}
