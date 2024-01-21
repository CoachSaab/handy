import 'package:flutter/material.dart';
import 'package:handy/pages/Client/Client.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Service/Service.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class Options extends StatelessWidget {
  const Options({super.key}); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('Options'),
      ),
      body: Stack(

        children: [
          Container(
            height: MediaQuery.of(context).size.height,

            // color: Colors.greenAccent,
          ),


        ],
      ),
    );
  }
}
