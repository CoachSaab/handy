import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Auth/SignUp/SignUp.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Get.to(SignUp());
                  },
                  child: Center(
                    child: Container(
                        height: 125, child: Center(child: Text("Client"))),
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Center(
                    child: Container(
                        height: 125, child: Center(child: Text("Service"))),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
