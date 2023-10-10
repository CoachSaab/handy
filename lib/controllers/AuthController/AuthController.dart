import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:handy/controllers/JWTController/JWTController.dart';
import 'package:http/http.dart' as http;
import '../../constants/API.dart' as API;

class AuthController extends GetxController {
  var jwtController = Get.put(JWTController());

  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future login() async {
    var loginDetails = jsonEncode(
        {"id": idController.text, "password": passwordController.text});
    print(loginDetails);
    http.Response res = await http.post(Uri.parse(API.login),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: loginDetails);
    var jsonData = jsonDecode(res.body);
    jwtController.setAuth(jsonData["token"]);
  }
}
