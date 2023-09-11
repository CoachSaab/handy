import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy/controllers/JWTController/JWTController.dart';
import 'package:handy/pages/Auth/Options/Options.dart';
import 'package:handy/pages/Auth/SignUp/SignUp.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/utils/Theme/theme.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final appDoc = await getApplicationDocumentsDirectory();
  Hive.init(appDoc.path);
  await Hive.openBox("secrets");
  await Hive.openBox("data");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var jwtController = Get.put(JWTController());
  @override
  Widget build(BuildContext context)  {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home:  Obx(() => jwtController.isAuth.value ? const HomePage() : const SignUp()),
      debugShowCheckedModeBanner: false,
    );
  }
}
