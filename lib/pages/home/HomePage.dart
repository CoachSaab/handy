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
            headerSliverBuilder: (context, innerBoxIsScrolled) => const [CustomAppbar()],
            body: Row(
              children: [
                _buildClickableConatiner(context, 180, 230, EdgeInsets.only(top: 50, left: 35, bottom: 300)),
                _buildClickableConatiner(context, 100, 100, EdgeInsets.only(top: 50, left: 35, bottom: 420)),
              ],
            ),
          ),
          Column(
            children: [
              _buildClickableConatiner(context, 100, 100, EdgeInsets.only(top: 415, left: 225)),
              _buildClickableConatiner(context, 320, 140, EdgeInsets.only(top: 23, left: 10)),
            ],
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
