import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String pageTitle;
  const CustomAppbar({Key? key, required this.pageTitle}): super(key:key);


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap:  true,
      pinned: true,
      title: Text(pageTitle),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context){
                return Align(
                  alignment: Alignment.topRight,

                  child: AlertDialog(
                    title: Text('notifications',textAlign: TextAlign.center,),
                  ),


                );

              },
              );

        }, icon: Icon(Icons.notifications))
      ],
      flexibleSpace: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.71, -0.71),
            end: Alignment(-0.71, 0.71),
            colors: [Color(0xFFFFD6FF), Color(0xFFE7C6FF), Color(0xFFB8C0FF)],
          ),
        ),
        child: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Center(child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                    "",
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Color.fromRGBO(63, 78, 114, 1)
                    ))
              ],
          )
          ),
        ),
      ),
      expandedHeight: 0,
    );
  }
}
