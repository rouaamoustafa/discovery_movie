import 'package:flutter/material.dart';
import 'package:movies_discovery_design/pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Pages(),
      //theme: ThemeData.dark(),
    );
  }
}

///TODO: use ListView.builder instead of hard coded row and columns now go chill or sleep orrrr take a breakkk byeeeeeeeeeeee 