import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/UserProvider/UserProvider.dart';
import 'package:handy/controllers/JWTController/JWTController.dart';
import 'package:handy/pages/Auth/Login/LoginPage.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/utils/Theme/theme.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:handy/UserProvider/';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //Initilize Firebase
  final appDoc = await getApplicationDocumentsDirectory();
  Hive.init(appDoc.path);
  await Hive.openBox("secrets");
  await Hive.openBox("data");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var jwtController = Get.put(JWTController());

  @override
  Widget build(BuildContext context)  {
    return GetMaterialApp(
    //  create: (context) => UserProvider(),
      title: 'Handy',
      theme: lightTheme,
      home:  Obx(() => jwtController.isAuth.value ? const HomePage() : const LoginPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
