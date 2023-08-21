import 'package:flutter/material.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/utils/Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
