import 'dart:math';
import 'package:flutter/material.dart';
import 'package:handy/ServiceProfile/ServiceProfile.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';
import 'package:handy/widgets/drawer/customDrawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
                const [CustomAppbar()],
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          print("object");
                        },
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Container(
                              height: 260,
                              width: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),                                ),
                                SizedBox(height: 16),

                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),                                ),
                              ],
                            ),

                          ]),
                        )),
                    SizedBox(height:10),

                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(

                        children: [
                          Container(
                            height: 20,
                            width: 365,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: Text('+ more',textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                          child: Text('Service near me :-'),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),

                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),

                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),


                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),
                        ],
                      ),
                    ),

                    SizedBox(height:10),

                    Container(
                      height: 200,
                      width: 365,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height:5),


                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey,
                          ),
                        ),

                        SizedBox(width: 5),

                        SizedBox(
                          child: Text('carpentry',style: TextStyle(
                            fontSize: 10,
                            fontWeight:FontWeight.bold,
                          ),
                          ),
                        ),

                        SizedBox(width: 150),

                        SizedBox(
                          child: Icon(
                            Icons.shopping_bag_outlined,
                          ),
                        ),
                        SizedBox(
                          child: Text('100',style: TextStyle(
                            fontSize: 10,
                            fontWeight:FontWeight.bold,
                          ),
                          ),
                        ),


                        SizedBox(width: 30),

                        SizedBox(
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                          ),
                        ),
                        SizedBox(
                          child: Text('2.1k',style: TextStyle(
                            fontSize: 10,
                            fontWeight:FontWeight.bold,
                          ),
                          ),
                        ),


                      ],
                    ),


                    SizedBox(height:20),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              height: 300,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20),

                            Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                              SizedBox(width: 20),

                            Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20),

                            Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20),

                              Container(
                                height: 300,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),


                            ),
                          ],
                        ),
                      ),
                    ),



                    SizedBox(height:30),


                    Container(
                      height: 25,
                      width: 225,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Text('show more ',textAlign: TextAlign.center,),
                    ),

                  ],
                ),
              ),
            ),
          ),
          const CustomBottomBar(),
        ],
      ),
    );
  }

  Widget _buildClickableConatiner(BuildContext context, double width,
      double height, EdgeInsetsGeometry margin) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServiceProfile()),
        );
      },
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.grey,
        ),
      ),
    );
  }
}
