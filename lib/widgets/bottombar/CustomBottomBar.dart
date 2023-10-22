import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Option/Options/Options.dart';
import 'package:handy/pages/Notification/Notificaton.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/pages/profile/Profile.dart';


class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration.zero,
      bottom: 18,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(9))),
        child: Container(
          // decoration: ,
          width: MediaQuery.of(context).size.width - 30,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment(0.71, -0.71),
              end: Alignment(-0.71, 0.71),
              colors: [Color(0xFFFFD6FF), Color(0xFFE7C6FF), Color(0xFFB8C0FF)],
            ),
          ),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {Get.to(HomePage());}, icon: const Icon(Icons.home)),
              IconButton(onPressed: () {Get.to(Options());}, icon: const Icon(Icons.handshake)),
              IconButton(onPressed: () {Get.to(Profile());}, icon: const Icon(Icons.manage_accounts)),
              IconButton(onPressed: () {Get.to(NotificationPage());}, icon: const Icon(Icons.mail))
            ],
          ),
        ),
      ),
    );
  }
}
