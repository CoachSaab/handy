import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/drawer/customDrawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      // bottomNavigationBar: CustomBottomBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppbar()],
              body: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                var k = Random();
                int r = k.nextInt(200);
                int g = k.nextInt(150);
                int b = k.nextInt(100);
                  return
                  Container(
                    color: Color.fromRGBO(r, g, b, 0.6),
                    height: 250,
                    child: Center(
                        child: Text("${index}")
                    ),
                  );
              },)
              ),
        ],
      )
    );
  }
}
