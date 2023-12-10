import 'package:flutter/material.dart';
import 'package:handy/ServiceProfile/ServiceProfile.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';
import 'package:get/get.dart'; // Import GetX


class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ServicePage'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 24.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                  ),
                  // Implement your search functionality here
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),

                child: Text(
                  'Types',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('plumber',
                    style: TextStyle(fontSize: 11),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                    ),
                  ),

                ),

                ElevatedButton(


                  onPressed: () {

                  },
                  child: Text('foreman ',
                    style: TextStyle(fontSize:9 ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),

                  ),

                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('painter',
                    style: TextStyle(fontSize: 8),

                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),

                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Add action for the fourth button
                  },
                  child: Text('fillter',
                    style: TextStyle(fontSize: 8),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                ),


              ],
            ),

            Container(
              height: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 90,
                    color:Colors.grey,
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    color:Colors.grey,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color:Colors.grey,
                  ),

                ],
              ),
            ),



            Container(

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 370,
                    height: 140,

                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            Container(

              alignment: Alignment.center,
              height: 9,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Reduce the gap between circles
                children: List.generate(8, (index) {
                  return Container(
                    width: index ==4? 25:20,
                    height: index==4? 25:20,
                    decoration: BoxDecoration(
                      color:index==4?Colors.grey[700] :Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),



            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(), // Your content here
                  CustomBottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

