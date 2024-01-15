import 'package:flutter/material.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget buildCurvedContainer(double width, double height, double borderRadius, EdgeInsets margin) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.grey,
      ),
      margin: margin,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          title:Container(

            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            child: Center(
              child: Text(
                'profile',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment.topCenter,
            child: Opacity(
              opacity: 0.60,
              child: Container(
                width: 389,
                height: 300,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.96, 0.27),
                    end: Alignment(-0.96, -0.27),
                    colors: [Color(0xFFC6FFD2), Color(0xFF6F7EF6), Color(0xFFFFD6FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Text(""),
              ),
            ),
          ),
        ),
        body: Column(

            children: [


              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Card(child:
                ListTile(
                  title: Text('HARSH SHRMA'),
                  leading: Icon(Icons.verified_user),
                ),),
              ),

              Card(child:
              ListTile(
                title: Text('harsh@gmail.com'),
                leading: Icon(Icons.mail_outline_outlined),
              ),),

              Card(child:
              ListTile(
                title: Text('********'),
                leading: Icon(Icons.lock_open_rounded),
              ),),

              Card(child:
                ListTile(
                  title: Text('6296xxxxxxx'),
                  leading: Icon(Icons.phone_android_outlined),
                ),),


    // Create the CustomBottomBar
    Expanded(
    child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
    Container(),
    CustomBottomBar(),
    ],
    ),
    ),
    ],
    ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}
