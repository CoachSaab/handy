import 'package:flutter/material.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';


class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClientPage'),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle),
          onPressed: (){},
          ),
        ],
      ),

      body: Stack(


       alignment: Alignment.bottomCenter,

        children: [
          Container(),
          CustomBottomBar(),
        ],

      ),

    );
  }
}
