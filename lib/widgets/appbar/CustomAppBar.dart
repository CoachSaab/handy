import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap:  true,
      pinned: false,
      title: Text("Home"),
      flexibleSpace: Center(child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText("Hello")
          ],
      )
      ),
      expandedHeight: 250,
    );
  }
}
