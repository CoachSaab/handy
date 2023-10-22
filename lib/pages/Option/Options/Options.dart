import 'package:flutter/material.dart';
import 'package:handy/pages/Client/Client.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Service/Service.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';


class Options extends StatelessWidget {
  const Options({super.key}); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Options'),
        actions: [
           IconButton(
            icon: Icon(Icons.account_circle),
             onPressed: (){},
          ),
        ],
      ) ,

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                onPressed: () {Get.to(ClientPage());},
                child: Center(
                  child: Container(
                    height: 125,
                    child: Center(child: Text("Client")),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                onPressed: () {Get.to(ServicePage());},
                child: Center(
                  child: Container(
                    height: 125,
                    child: Center(child: Text("Service")),
                  ),
                ),

              ),
            ),

          ],
        ),
      ),

    );
  }
}
