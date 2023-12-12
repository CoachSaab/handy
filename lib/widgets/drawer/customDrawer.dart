import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        margin: EdgeInsets.only(bottom:60),
        width: 260,// Adjust the fraction as needed
        child: Drawer(
          shadowColor: Colors.grey,
          elevation: 5,
          child: ListView(
            children: [
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  print("Click");
                },
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {
                  print("Click");
                },
              ),
              ListTile(
                title: Text("Credits"),
                leading: Icon(Icons.money),
                onTap: () {
                  print("Click");
                },
              ),
              ListTile(
                title: Text("Themes"),
                leading: Icon(Icons.add_circle),
                onTap: () {
                  print("Click");
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.account_tree_outlined),
                onTap: () {
                  print("Click");
                },
              ),
              ListTile(
                title: Text("License"),
                leading: Icon(Icons.local_police_rounded),
                onTap: () {
                  print("Click");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
