import 'package:flutter/material.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:get/get.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("by your self")),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, -0.5),
              end: Alignment(0.75, 1.5),
              colors: [
                Color(0xFFFFEDFF),
                Color(0xFFB8C0FF),
                Color(0xFFB8C0FF),
                Color(0xFF3F4E72)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5199999809265137),
                    fontSize: 36,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                TextField(),
                ElevatedButton(onPressed: () {
                                Get.to(HomePage());

                }, child: Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
