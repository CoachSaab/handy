import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/controllers/AuthController/AuthController.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var loginController = Get.put(AuthController());

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.71, -0.71),
                  end: Alignment(-0.71, 0.71),
                  colors: [
                    Color(0xFFFFD6FF),
                    Color(0xFFB8C0FF),
                    Color(0xFFE7C6FF),
                  ],
                ),
              ),
            ),
          ),
        ]),
        Positioned(
          top: MediaQuery.of(context).size.height / 2.75,
          child: Card(
            borderOnForeground: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            elevation: 21,
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.0,
                width: MediaQuery.of(context).size.width - 60,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: TextField(
                          controller: loginController.idController,
                          decoration: const InputDecoration(
                              hintText: "Email",
                              suffixIcon: Icon(Icons.account_circle))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0),
                      child: TextField(
                          controller: loginController.passwordController,
                          obscureText: isVisible,
                          decoration: InputDecoration(
                              hintText: "password",
                              suffix: IconButton(
                                icon: isVisible
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Center(
                        child: InkWell(
                            onTap: () {
                              loginController.login();
                            },
                            child: Card(
                                color: Colors.blue,
                                child: Container(
                                    child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15),
                                  child: Text("Done",
                                      style: TextStyle(color: Colors.white)),
                                )))),
                      ),
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(),
                        )),
                        Text("OR"),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(),
                        )),
                      ],
                    ),
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Login Options Icons "),
                    ))
                  ],
                )),
          ),
        ),
        Positioned(
            bottom: 10,
            child: Row(
              children: [
                const Text("Don't have an Account ? "),
                TextButton(onPressed: () {}, child: const Text("Sign Up"))
              ],
            ))
      ]),
    );
  }
}
