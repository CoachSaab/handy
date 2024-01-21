import 'package:flutter/material.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class ServiceProfile extends StatefulWidget {
  const ServiceProfile({Key? key});

  @override
  _ServiceProfileState createState() => _ServiceProfileState();
}

class _ServiceProfileState extends State<ServiceProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 190,
        backgroundColor: Colors.transparent,
        elevation: 5,
        shadowColor: Colors.grey,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.96, 3.27),
                  end: Alignment(-0.96, 1.17),
                  colors: [Color(0xFFC6FFD0), Color(0xFF6FBEF6), Color(0xFFFFD6FF)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  'COOK',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 127,
              child: GestureDetector(
                onTap: () {
                  // Handle the tap on the round container
                  print('Round container tapped!');
                },
                child: Container(
                  width: 130,
                  height: 400,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Replace with your desired color
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                    size: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Card(child: ListTile(
              title: Text('Name - Madan'),
              leading: Icon(Icons.account_circle),
            ),),
          ),

          Card(child: ListTile(
            title: Text('Ph - 94xxxxxxxx'),
            leading: Icon(Icons.phone),
          ),),


          Card(child: ListTile(
            title: Text('Address - Ludhiana'),
            leading: Icon(Icons.note_alt_outlined),
          ),),


          Card(child: ListTile(
            title: Text('Experience - 4 yrs'),
            leading: Icon(Icons.add_box_sharp),
          ),),

          Card(child: ListTile(
            title: Text(' Citizem - Indian'),
            leading: Icon(Icons.flag_circle),
          ),),

          Card(child: ListTile(
            title: Text('Rating - 5 ⭐️'),
            leading: Icon(Icons.generating_tokens_outlined),
          ),),

          Card(child: ListTile(
            title: Text('Feedback - Honest'),
            leading: Icon(Icons.feed_outlined),
          ),),

          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            showDialog(
                context:context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Thankyou',textAlign: TextAlign.center),
                  );
                },
            );
          },
              child: Text('book now')),


        ],
      ),

    );
  }
}

