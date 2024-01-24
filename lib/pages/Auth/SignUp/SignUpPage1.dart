import 'package:flutter/material.dart';
import 'package:handy/pages/Auth/SignUp/SignUpPage2.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({super.key});

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
          const Positioned(
            top: 120,
            child: Text(
              "Sign-Up",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(63, 78, 114, 1)),
            ),
          ),
          const Positioned(
            top: 240,
            child: Text(
              "Your Name ...",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(63, 78, 114, 0.75)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onSubmitted: (value){
                  print(value);
                },
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 34, color: Color.fromRGBO(63, 78, 114, 0.75)),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_outlined),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage2(),),);
        },
      ),
    );
  }
}
