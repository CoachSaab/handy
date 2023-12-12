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
            body: Stack(
              children: [
                _buildClickableConatiner(context, 180, 244,EdgeInsets.only(top:10,left: 13) ),
                _buildClickableConatiner(context, 150, 115, EdgeInsets.only(top:12,left:210 )),
                _buildClickableConatiner(context, 150, 115, EdgeInsets.only(top: 140,left: 210)),


                //MORE

                Container(
                  width: 346,
                  height: 20,
                  margin: EdgeInsets.only(top:270,left:15),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text(textAlign: TextAlign.center,'more +'),
                ),

                Padding(padding: EdgeInsets.only(top:305),
                  child: SizedBox(
                  width: 185,
                  height: 36,
                  child: Text(
                    'Services near me : -',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),

                  ),
                ),
          ),

                Container(
                  width: 100,
                  height: 30,
                  margin: EdgeInsets.only(top:340,left:15),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text(textAlign: TextAlign.center,'cook'),
                ),

            Container(
              width: 40,
              height: 20,
              margin: EdgeInsets.only(top:305,left:320),
              decoration: ShapeDecoration(
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              ),
              child: Text(textAlign: TextAlign.center,'filter'),
            ),


                Container(
                  width: 100,
                  height: 30,
                  margin: EdgeInsets.only(top:340,left:140),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text(textAlign: TextAlign.center,'lorem'),
                ),


                Container(
                  width: 100,
                  height: 30,
                  margin: EdgeInsets.only(top:340,left:260),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text(textAlign: TextAlign.center,'sumlum'),
                ),

                Container(
                  width: 350,
                  height: 190,
                  margin: EdgeInsets.only(top:390,left: 12),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                ),


                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(top:585,left: 12),
                  decoration: ShapeDecoration(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:595,left:55),
                  child: SizedBox(
                    width: 185,
                    height: 36,
                    child: Text(
                      'carpentry\n'
                      'ayush',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),

                    ),
                  ),
                ),


                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(top:580,left: 228),
                  child: Icon(
                    Icons.shopping_bag_rounded, // Replace with the desired icon
                    size: 32.0, // Replace with the desired icon size
                    color: Colors.grey, // Replace with the desired icon color
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:595,left:260),
                  child: SizedBox(
                    width: 185,
                    height: 36,
                    child: Text(
                    '250',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),

                    ),
                  ),
                ),


                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(top:584,left: 305),
                  child: Icon(
                    Icons.remove_red_eye, // Replace with the desired icon
                    size: 30, // Replace with the desired icon size
                    color: Colors.grey, // Replace with the desired icon color
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:596,left:340),
                  child: SizedBox(
                    width: 185,
                    height: 36,
                    child: Text(
                      '75k',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),

                    ),
                  ),
                ),


                Container(
                  width: 250,
                  height: 39,
                  margin: EdgeInsets.only(top:650,left: 60),
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(textAlign: TextAlign.center,'show more \n↓'),
                ),


              ],
            ),
          ),

          const CustomBottomBar(),
        ],
      ),
    );
  }

Widget _buildClickableConatiner(BuildContext context, double width, double height, EdgeInsetsGeometry margin){
return GestureDetector(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder:(context)=>ServiceProfile()),
    );
  },
  child: Container(
      margin: margin,
       width: width,
      height: height,
  decoration: BoxDecoration(
  borderRadius:  BorderRadius.circular(9),
  color: Colors.grey,
  ),
  ),

);
}
 }
