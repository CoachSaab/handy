import 'package:flutter/material.dart';
import 'package:handy/ServiceProfile/ServiceProfile.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';


class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
             const [CustomAppbar(pageTitle: 'Service')],


    body: Column(
        children: [
          SizedBox(
            child: CarouselSlider(
              items: [
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.amberAccent),
                Container(color: Colors.purpleAccent),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 10/9,
                viewportFraction: 1,
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



          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Tell us what are you looking for........?',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
          ),

          SizedBox(height: 40),

          DropDownTextField(
            textFieldDecoration:
            InputDecoration(hintText: "services"),
            enableSearch: true,
            dropDownList: const [
              DropDownValueModel(name: 'electician', value: ""),
              DropDownValueModel(name: 'plumber', value: ""),
              DropDownValueModel(name: 'carpentar', value: ""),
              DropDownValueModel(name: 'cook', value: ""),
              DropDownValueModel(name: 'driver', value: ""),
              DropDownValueModel(name: 'sweeper', value: ""),
              DropDownValueModel(name: 'labour', value: ""),
              DropDownValueModel(name: 'garderner', value: ""),
              DropDownValueModel(name: 'builder', value: ""),
              DropDownValueModel(name: 'helper', value: ""),
              DropDownValueModel(name: 'ironsmith', value: ""),

            ],
          ),

          SizedBox(height: 30),


          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.pink, // Set the background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Set the border radius
              ),
              minimumSize: Size(290, 50), // Set the width and height
            ),
            child: Text(
              'Lets go!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set the text color
              ),
            ),
          ),




          SizedBox(height: MediaQuery.of(context).size.height*0.16),

             Text(' ☑️Browse profiles,ratings and portfolios',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
            Text(' ☑️Contact skilled person within minutes',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            ),


           Text(' ☑️Pay only when you are 100% satisfied',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            ),


//✅






             const CustomBottomBar(),

        ],

      ),
            ),

    ],
    ),
    );
  }
}

//give the info about different service and worker near by you
