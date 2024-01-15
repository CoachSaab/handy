import 'package:flutter/material.dart';
import 'package:handy/ServiceProfile/ServiceProfile.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';
import 'package:handy/widgets/drawer/customDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  bool showCarousel = false;
  bool showMoreContent = false;

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
                padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceProfile(),));
                          print("object");
                        },
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width:  MediaQuery.of(context).size.width * 0.6,
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
                      child: Container(
                        height: 20,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: Text('+ more',textAlign: TextAlign.center),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                          child: Text('Service near me :-',style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 0.08,
                            width:  MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),

                          Container(
                            height: MediaQuery.of(context).size.width * 0.08,
                            width:  MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),

                          Container(
                            height: MediaQuery.of(context).size.width * 0.08,
                            width:  MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),


                          Container(
                            height: MediaQuery.of(context).size.width * 0.08,
                            width:  MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),                          ),
                        ],
                      ),
                    ),

                    SizedBox(height:10),

                    Container(
                      height: MediaQuery.of(context).size.width * 0.5,
                      width:  MediaQuery.of(context).size.width * 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height:5),


                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.1,
                          width:  MediaQuery.of(context).size.width * 0.1,
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

                    Padding(
                      padding: const EdgeInsets.all(30),
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              showCarousel = !showCarousel;
                              showMoreContent =!showMoreContent;
                            });

                          },
                          child: Container(
                            height: 25,
                            width: 225,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: Text('show more ↓',textAlign: TextAlign.center,),
                          ),
                        ),
                    ),

                    if (showCarousel)
                      SizedBox(
                        child: CarouselSlider(
                          items: [
                            Container(color: Colors.grey),
                            Container(color: Colors.grey),
                            Container(color: Colors.grey),
                            Container(color: Colors.grey),
                          ],
                          options: CarouselOptions(
                            height: 200,
                            aspectRatio: 16/9,
                            viewportFraction: 0.8,
                            initialPage: 4,
                            enableInfiniteScroll: true,
                            reverse: true,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.linear,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),

                     SizedBox(height: 20),

                     if(showMoreContent)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60.0),
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

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

