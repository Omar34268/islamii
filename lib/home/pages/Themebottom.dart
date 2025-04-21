import 'package:flutter/material.dart';
import 'package:islamii/home/pages/selectedtheme.dart';
import 'package:islamii/home/pages/unselectedtheme.dart';

class Themebottom extends StatelessWidget {
  const Themebottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 15,),
          Selectedtheme(selectedtheme: 'Light',),
          SizedBox(height: 20,),
          Unselectedtheme(unselectedtheme: 'dark',)
        ],

      ),
    );
  }
}
