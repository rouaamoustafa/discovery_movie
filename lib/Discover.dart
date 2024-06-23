import 'package:flutter/material.dart';

import 'Home_Page.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int _clickedButtonIndex = 0;

  void _handleButtonClick(int index) {
    setState(() {
      _clickedButtonIndex = index;
    });
  }
//okay type here TYPE SOMTHING me ? yess OKAYY //lets start with this okito?ok

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: const Icon(Icons.arrow_back_ios, color: Colors.yellow),
                  ),
                  const SizedBox(width: 20),
                  const Text("Discover",
                    style: TextStyle(
                      fontFamily: "Poppons",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
              const Text(".",
                style: TextStyle(
                    fontFamily: "Poppons",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.yellow
                 ),
              )
                ],
              ),
            ),
            Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCustomButton(text: 'All', index: 0),
                  _buildCustomButton(text: 'ANIMATION(0)', index: 1),
                  _buildCustomButton(text: 'ACTION(3)', index: 2),
                  _buildCustomButton(text: 'COMEDY', index: 3),
                  _buildCustomButton(text: 'POLITICS', index: 4),
                  _buildCustomButton(text: 'DRAMA', index: 5),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: 6,
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                    crossAxisSpacing: 16.0, // Spacing between columns
                    childAspectRatio: 0.5, // Aspect ratio of each grid item
                  ),
                  itemBuilder:(BuildContext context , int index){
                    return CustomFilmCard();
                  } )
              ),
            ),
          ],
        ),
      ),

    );
  }
  Widget _buildCustomButton ({required String text , required int index}){
    bool isClicked = _clickedButtonIndex == index;
    return GestureDetector(
      onTap: (){
        _handleButtonClick(index);
      },
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: isClicked ?  Colors.yellow :const Color(0xFF424242) ,
        ),
        height: 40,
        child: Text(
          text,
          style: TextStyle(
            color: isClicked ? Colors.black: Colors.white ,
            fontSize: 14,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );



  }
}

Widget CustomFilmCard (){
  return GestureDetector(
    onTap: (){},
    child: SizedBox(
      width: 200,
      height: 360,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width:180 ,
                height: 255,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF424242),
                ),
              ),
              const Positioned(
                top: 10,
                  left: 135,
                  child: Icon(Icons.bookmark_outline,color: Colors.white,)
              )
            ]
          ),
          const Text(
            "Hitman’s Wife’s Bodyguard",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),
          ),
          const Row(
            children: [
              Text(
                "3.5",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
            ],
          ),
        ],
      ),
    ),
  );
}


