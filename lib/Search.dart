import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final bool _isBookmarkClicked = false;

  int _clickedButtonIndex = 0;


  void _handleButtonClick(int index) {
    setState(() {
      _clickedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,

      body:
      SingleChildScrollView(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.yellow),
                  SizedBox(width: 20),
                  Text("Search",
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
                        color: Colors.yellow
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 360,
              height: 60,
              padding:  const EdgeInsets.symmetric(horizontal:20,vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF2B2B2B),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search_outlined,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Search",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18,color: Colors.grey),)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 30,
              // padding: EdgeInsets.symmetric(horizontal: 20),
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
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search results (3)",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical:5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                              children: [
                                Container(
                                  width:182,
                                  height: 273,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF424242),
                                  ),
                                ),
                                Positioned(
                                    top: 18,
                                    left: 145,
                                    child: Icon(
                                      _isBookmarkClicked ? Icons.bookmark_outlined : Icons.bookmark_border,
                                      color:  Colors.white,
                                    )

                                )
                              ]
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const SizedBox(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: "Poppins"
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white
                                    ),
                                  ),
                                  //SizedBox(width:4,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  HalfStarIcon(),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text("Action, Comedy, Crime",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text("The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                              children: [
                                Container(
                                  width:182,
                                  height: 273,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF424242),
                                  ),
                                ),
                                Positioned(
                                    top: 18,
                                    left: 145,
                                    child: Icon(
                                      _isBookmarkClicked ? Icons.bookmark_outlined : Icons.bookmark_border,
                                      color:  Colors.white,
                                    )

                                )
                              ]
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const SizedBox(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: "Poppins"
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white
                                    ),
                                  ),
                                  //SizedBox(width:4,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  HalfStarIcon(),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text("Action, Comedy, Crime",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text("The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                              children: [
                                Container(
                                  width:182,
                                  height: 273,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF424242),
                                  ),
                                ),
                                Positioned(
                                    top: 18,
                                    left: 145,
                                    child: Icon(
                                      _isBookmarkClicked ? Icons.bookmark_outlined : Icons.bookmark_border,
                                      color:  Colors.white,
                                    )

                                )
                              ]
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const SizedBox(
                          width: 160,
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hitman’s Wife’s Bodyguard",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: "Poppins"
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white
                                    ),
                                  ),
                                  //SizedBox(width:4,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  //SizedBox(width:2,),
                                  HalfStarIcon(),
                                  //SizedBox(width:2,),
                                  Icon(Icons.star, color: Colors.grey),
                                ],
                              ),
                              Text("Action, Comedy, Crime",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text("The world's most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on anoth......",
                                style: TextStyle(
                                  // fontFamily:
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF888888),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ],
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
