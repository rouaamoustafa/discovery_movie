import 'package:flutter/material.dart';

import 'Discover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<bool> _isBookmarkClicked = [false, false, false, false, false, false];
  final List<String> _title =[
    "title 1 ",
    "title 2 ",
    "title 3 ",
    "title 4 ",
  ];//like this?ohoooo yessss
  //okay part 2 , make a listView.builder where?


  void _toggleBookmark(int index) {
    setState(() {
      _isBookmarkClicked[index] = !_isBookmarkClicked[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                Text(
                  "Top Five",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ".",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //between these 2
          //ya3ne here
          SizedBox(
            height: 266,

            child: ListView.builder(//czzzzzz we need to give a height to the ListView.builder //hhmmm the scroll direction is wrong how do we fix it
//yayyy all gooddd still we have the grey image
             scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context , index ){
            return   TopFiveContainers(index);
                }//hon i put the wigdt?//take the cursor and put it aaala il itemBuilder now
            ),
          ), //now the app wil explode
         // https://www.figma.com/design/O7wUetXPzVPwArCEWK3Eu4/App-Anime-%26-Movies-NEON-MODE-(Community)?node-id=8-280&t=KXjXQF6G0NDDF6qV-0//
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      "Latest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Discover(),
                      ),
                    );
                    print("Container tapped!");
                  },
                  child: Container(
                    child: const Text(
                      "SEE MORE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.yellow,
                      ),
                    ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                  onTap: () => _toggleBookmark(3),
                                  child: Icon(
                                    _isBookmarkClicked[3] ? Icons.bookmark_outlined : Icons.bookmark_border,
                                    color: _isBookmarkClicked[3] ? Colors.yellow : Colors.white,
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                  onTap: () => _toggleBookmark(3),
                                  child: Icon(
                                    _isBookmarkClicked[3] ? Icons.bookmark_outlined : Icons.bookmark_border,
                                    color: _isBookmarkClicked[3] ? Colors.yellow : Colors.white,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container TopFiveContainers(int index) {
    return Container(
            width: 300,
            height: 266,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
          Container(
            width: 300,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF424242),
            ),
          ),
          Positioned(
            top: 18,
            right: 15,
            child: GestureDetector(//i have a easier way
              onTap: () => _toggleBookmark(index),//what is this oooo thjats cooll
              child:Icon(
                _isBookmarkClicked[index] ? Icons.bookmark_outlined : Icons.bookmark_border,
                color: _isBookmarkClicked[index] ? Colors.yellow : Colors.white,
              ),
            ),
          ),
                  ],
                ),
                const SizedBox(height: 3),
                const Text(
                  "Himan's wife's Bodyguard",
                  style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
          letterSpacing: 1.9,
                  ),
                ),
                const Row(
                  children: [
          Text(
            "3.5",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 6),
          Icon(Icons.star, color: Colors.yellow),
          SizedBox(width: 3),
          Icon(Icons.star, color: Colors.yellow),
          SizedBox(width: 3),
          Icon(Icons.star, color: Colors.yellow),
          SizedBox(width: 3),
          HalfStarIcon(),
          SizedBox(width: 3),
          Icon(Icons.star, color: Colors.grey),
                  ],
                ),
              ],
            ),
          );
  }
}

class HalfStarIcon extends StatelessWidget {
  const HalfStarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.star,
          color: Color(0xFF424242),
        ),
        ClipRect(
          clipper: HalfClipper(),
          child: const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}

class HalfClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width / 2, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
