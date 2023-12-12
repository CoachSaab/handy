import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/painting.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClientPage'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body:ListView.builder(
          itemBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.all(9.0),
          child: Stack(
            children: [
              Container(
                width: 350,
                height: 70,
                margin: EdgeInsets.only(top: 10, left: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(10, 33, 88, 0.2),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.call,
                    size: 25,
                    color: Colors.grey,
                  ),
              ),
              ),

              Container(
                width: 61,
                height: 61,
                margin: EdgeInsets.only(top: 14,left:10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey,
                ),
              ),

          /*  Positioned(
              left: 100,
              top: 15,// Adjust the left value to move the SizedBox to the right
              child: SizedBox(
                child: Text(
                  'Need of cook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                ),
              ),
            ),*/

              Container(
                width: 200,
                height: 4,
                margin: EdgeInsets.only(top: 24, left: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
              ),
              Container(
                width: 170,
                height: 4,
                margin: EdgeInsets.only(top: 34, left: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
              ),
              Container(
                width: 150,
                height: 4,
                margin: EdgeInsets.only(top: 44, left: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
              ),




            ],
          ),
          ),
      ),






      /* Stack(
        children: [
          Container(
            width: 350,
            height: 70,
            margin: EdgeInsets.only(top: 10, left: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(50, 33, 88, 0.2),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      // Handle the call button press
                    },
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 61,
            height: 61,
            margin: EdgeInsets.only(top: 14, left: 23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blueGrey,
            ),
          ),

          Container(
            width: 200,
            height: 4,
            margin: EdgeInsets.only(top: 24, left: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
          Container(
            width: 170,
            height: 4,
            margin: EdgeInsets.only(top: 34, left: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
          Container(
            width: 150,
            height: 4,
            margin: EdgeInsets.only(top: 44, left: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
        ],
      ),*/
    );
  }
}

//give the ino about different clients who need service
