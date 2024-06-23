import 'package:flutter/material.dart';
import 'package:movies_discovery_design/Bookmark.dart';
import 'package:movies_discovery_design/Home_Page.dart';

import 'Discover.dart';
import 'Search.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List pages=[
     const Home(),
     //const Discover(),
     const Search(),
     const Bookmark(),
  ];
  int selectedIndex=0;

  Color _getIconColor(int index) {
    return selectedIndex == index ? Colors.yellow : Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: _getIconColor(0)),label: 'HOME'),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: _getIconColor(1)),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark,color: _getIconColor(2)),label: 'BookMark')
      ],),
    );
  }
}
