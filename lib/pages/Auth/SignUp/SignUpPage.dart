import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/pages/profile/Profile.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.71, -0.71),
                    end: Alignment(-0.71, -0.71),
                    colors: [
                      Color(0xFFFDD6FF),
                      Color(0xDDDDD6FF),
                      Color(0xDDDDD6FF),
                    ],
                  ),
                )),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.75,
            child: Card(
              borderOnForeground: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 21,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Center(
                        child: Text(
                          "Sign-in",
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(63, 78, 114, 1)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "username",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "email",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "phone",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            // Navigate to HomePage when the "Done" button is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Card(
                            color: Colors.blue,
                            child: Container(
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15),
                                child: Text(
                                  "Done",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
