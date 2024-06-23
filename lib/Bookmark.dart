import 'package:flutter/material.dart';

import 'Search.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  final int _currentIndex = 2;
  final List<bool> _isBookmarkClicked = [false, false, false, false, false, false];

  Color _getIconColor(int index) {
    return _currentIndex == index ? Colors.yellow : Colors.white;
  }

  void _toggleBookmark(int index) {
    setState(() {
      _isBookmarkClicked[index] = !_isBookmarkClicked[index];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.yellow),
                SizedBox(width: 20),
                Text("Bookmarks",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                Text(".",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.yellow//byeeeeeee
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 6),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 182,
                                height: 273,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF424242),
                                ),
                              ),
                              Positioned(
                                top: 18,
                                left: 145,
                                child: GestureDetector(
                                  onTap: () => _toggleBookmark(0),
                                  child: Icon(
                                    _isBookmarkClicked[0] ? Icons.bookmark_outlined : Icons.bookmark_border,
                                    color: _isBookmarkClicked[0] ? Colors.yellow : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  HalfStarIcon(),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text(
                                "Action, Comedy, Crime",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 182,
                                height: 273,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF424242),
                                ),
                              ),
                              Positioned(
                                top: 18,
                                left: 145,
                                child: GestureDetector(
                                  onTap: () => _toggleBookmark(1),
                                  child:Icon(
                                    _isBookmarkClicked[1] ? Icons.bookmark_outlined : Icons.bookmark_border,
                                    color: _isBookmarkClicked[1] ? Colors.yellow : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  HalfStarIcon(),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text(
                                "Action, Comedy, Crime",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 182,
                                height: 273,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF424242),
                                ),
                              ),
                              Positioned(
                                top: 18,
                                left: 145,
                                child: GestureDetector(
                                  onTap: () => _toggleBookmark(2),
                                  child: Icon(
                                    _isBookmarkClicked[0] ? Icons.bookmark_outlined : Icons.bookmark_border,
                                    color: _isBookmarkClicked[0] ? Colors.yellow : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  HalfStarIcon(),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text(
                                "Action, Comedy, Crime",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }
}
