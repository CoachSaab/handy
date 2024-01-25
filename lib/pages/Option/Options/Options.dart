import 'package:flutter/material.dart';
import 'package:handy/pages/Client/Client.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Service/Service.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
        const [CustomAppbar(pageTitle: 'Options')],
    body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.indigo)),
              Expanded(flex:2,child: Container(color: Colors.white24)),
            ],
          ),
          Positioned(
            top: 350,
            child: Container(
              width: size.width * 0.9,
              height: 125,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientPage(),));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' want to work?\n search clients',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),),
                    SizedBox(width: 120),
                    Icon(Icons.navigate_next,color: Colors.black,)
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
              ),
            ),
          ),

          Positioned(
            top: 500,
            child: Container(
              width: size.width * 0.9,
              height: 125,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ServicePage(),));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('want to hire?\nservices',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17,
                    ),),
                    SizedBox(width: 120),
                    Icon(Icons.navigate_next,color: Colors.black,)
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
              ),
            ),
          ),
          const CustomBottomBar(),

        ],

      ),
      ),
    ],
    ),
    );
  }
}
