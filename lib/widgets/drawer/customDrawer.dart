import 'package:flutter/material.dart';
import 'package:handy/pages/Credits/CreditsPage.dart';
import 'package:handy/pages/About/AboutPage.dart';
import 'package:handy/pages/Theme/ThemePage.dart';
import 'package:handy/pages/profile/Profile.dart';

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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile() ),
                  );
                },
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {
                     Navigator.push(
                         context, 
                         MaterialPageRoute(
                             builder: (context) => AboutPage()),);
                },
              ),
              ListTile(
                title: Text("Credits"),
                leading: Icon(Icons.money),
                onTap: () {
                  print("Click");
                  Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) => CreditsPage()
                  ),
                  );
                },
              ),
              ListTile(
                title: Text("Themes"),
                leading: Icon(Icons.add_circle),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThemePage()
                  ),
                  );
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.account_tree_outlined),
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>AboutPage()
                  ),
                );
                },
              ),
              ListTile(
                title: Text("License"),
                leading: Icon(Icons.local_police_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LicensePage()
                  ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
