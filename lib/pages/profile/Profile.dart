import 'package:flutter/material.dart';
import 'package:handy/widgets/appbar/CustomAppBar.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppbar()],
          body: Center(child: Text("data"),)),
    );
  }
}
