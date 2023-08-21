import 'package:flutter/material.dart';
class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration.zero,
      bottom: 10,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9))),
        child: Container(
          // decoration: ,
          width: MediaQuery.of(context).size.width - 30,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment(0.71, -0.71),
              end: Alignment(-0.71, 0.71),
              colors: [Color(0xFFFFD6FF), Color(0xFFE7C6FF), Color(0xFFB8C0FF)],
            ),
          ),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {

              }, icon: Icon(Icons.home)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.manage_accounts)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.menu_sharp))
              ],
          ),
        ),
      ),
    );
  }
}
