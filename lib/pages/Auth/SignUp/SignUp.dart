import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        // Column(children: [
        //   Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.blue,
        //       )),
        //   Expanded(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.grey,
        //       )),
        // ]),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.71, -0.71),
              end: Alignment(-0.71, 0.71),
              colors: [Color(0xFFFFD6FF), Color(0xFFE7C6FF), Color(0xFFB8C0FF)],
            ),
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height / 2.5,
          child: Card(
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(63, 78, 114, 1)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.account_circle))),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.password))),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Center(
                        child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Colors.blue,
                                child: Container(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15),
                                  child: const Text("Submit",
                                      style: TextStyle(color: Colors.white)),
                                )))),
                      ),
                    )
                  ],
                )),
          ),
        )
      ]),
    );
  }
}
