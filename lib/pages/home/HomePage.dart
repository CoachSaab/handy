import 'package:flutter/material.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';
import 'package:handy/widgets/drawer/customDrawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomBottomBar(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppbar()],
          body: ListView.builder(
            itemCount: 0,
            itemBuilder: (context, index) {
            return
              Container(
                color: Colors.blue,
                height: 250,
                child: Center(
                    child: Text("${index}")
                ),
              );
          },)
          )
    );
  }
}
