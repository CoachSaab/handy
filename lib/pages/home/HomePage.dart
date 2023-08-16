import 'package:flutter/material.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppbar()],
          body: ListView.builder(
            itemCount: 10,
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
