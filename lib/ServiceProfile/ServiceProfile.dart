import 'package:flutter/material.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class ServiceProfile extends StatefulWidget {
  const ServiceProfile({Key? key});

  @override
  _ServiceProfileState createState() => _ServiceProfileState();
}

class _ServiceProfileState extends State<ServiceProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 190,
        backgroundColor: Colors.transparent,
        elevation: 5,
        shadowColor: Colors.grey,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.96, 3.27),
                  end: Alignment(-0.96, 1.17),
                  colors: [Color(0xFFC6FFD0), Color(0xFF6FBEF6), Color(0xFFFFD6FF)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  'Service Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 127,
              child: GestureDetector(
                onTap: () {
                  // Handle the tap on the round container
                  print('Round container tapped!');
                },
                child: Container(
                  width: 130,
                  height: 400,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Replace with your desired color
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                    size: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [

          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              'Cook',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 10, right: 190),
            child: const Text(
              'Name - Madan\n'
                  'Ph - 98753xxxxx\n'
                  'Address - Ludhiana\n'
                  'Experience - 4 yrs\n'
                  'Citizen - Indian\n'
                  'Rating - 5 ⭐\n'
                  'Feedback - Honest',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w200,
                height: 1.5, // Adjust the height value for proper spacing
              ),
            ),
          ),

          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xB7D9D9D9),            ),
            margin: const EdgeInsets.only(top: 1, left: 250),
            child: const Icon(
              Icons.location_on_outlined,
              size: 50,
            ),
          ),

          Container(
            child: const Text(
              '  Bio :- This is for demo purpose to show how the bio looks like.',
              style: TextStyle(
                fontWeight: FontWeight.w300,

              ),
            ),
            margin: const EdgeInsets.only(top: 10),
            width: 357,
            height: 129,
            decoration: ShapeDecoration(
              color: const Color(0xFFC5DAEE),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              shadows: [
                const BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),

          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(),
                const CustomBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
