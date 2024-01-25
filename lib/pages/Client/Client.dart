import 'package:flutter/material.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
import 'package:handy/widgets/bottombar/CustomBottomBar.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  Widget styledText(String text, {double fontSize = 15, FontWeight fontWeight = FontWeight.w500}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  Widget clientInfoContainer(BuildContext context, String title, String contact, String username, String monthly) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
      margin: const EdgeInsets.symmetric(vertical: 10), // Added margin between containers
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 140, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    styledText(title, fontSize: 25, fontWeight: FontWeight.bold),
                    SizedBox(height: 10),
                    styledText('Mr sascnlsch'),
                    styledText('contact-7848243455'),
                    styledText('@fhdg22'),
                    styledText('monthly-10000'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'approach now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => const [CustomAppbar(pageTitle: 'Client')],
            body: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  styledText('Top results', fontSize: 20, fontWeight: FontWeight.bold),
                  const Divider(
                    height: 5,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  styledText('1-20 of 1M results'),
                  const SizedBox(height: 20),
                  for (int i = 1; i <= 10; i++)
                    clientInfoContainer(
                      context,
                      "Need of cook $i",
                      "7848243455",
                      "@fhdg22",
                      "10000",
                    ),
                ],
              ),
            ),
          ),
          const CustomBottomBar(),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ClientPage(),
  ));
}
