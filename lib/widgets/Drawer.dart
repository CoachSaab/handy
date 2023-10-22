import 'package:flutter/material.dart';
class DrawerElements extends StatelessWidget {
  const DrawerElements({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: const BoxDecoration(),
              child: const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),

              ),

          )
        ],
      ),
    );
  }
}
