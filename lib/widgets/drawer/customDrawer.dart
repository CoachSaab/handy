import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: () {
              print("Click");
            },)
          ],
        ),
      ),
    );
  }
}
