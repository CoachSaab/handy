import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/pages/Auth/SignUp/SignUpPage.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isVisible = false;

  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      // Successful login, navigate to the home page
      Get.to(() => HomePage());
    } else {
      // Show an alert for invalid credentials
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Invalid Credentials'),
            content: const Text('Please enter valid email and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _handleGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User canceled the Google Sign In process
        return;
      }

      // Successful Google Sign In, navigate to the home page
      Get.to(() => HomePage());
    } catch (error) {
      print(error);
    }
  }



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
                        controller: _emailController,
                        decoration: const InputDecoration(
                            hintText: "Email",
                            suffixIcon: Icon(Icons.account_circle)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: isVisible,
                        decoration: InputDecoration(
                            hintText: "Password",
                            suffix: IconButton(
                              icon: isVisible
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Center(
                        child: InkWell(
                          onTap: _login,
                          child: Card(
                            color: Colors.blue,
                            child: Container(
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15),
                                child: Text("Done",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Divider(),
                          ),
                        ),
                        Text("OR"),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Divider(),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Login Options Icons "),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Row(
              children: [
                const Text("Don't have an Account ? "),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



