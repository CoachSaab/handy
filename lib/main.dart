import 'package:flutter/material.dart';
import 'package:handy/pages/home/HomePage.dart';
import 'package:handy/utils/Theme/theme.dart';
import 'package:handy/widgets/Drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: DrawerElements()),
      appBar: AppBar(
        title: Text("Handy"),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
