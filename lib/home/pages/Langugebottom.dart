import 'package:flutter/material.dart';
import 'package:islamii/home/pages/unselected.dart';

import 'Selecteditem.dart';
class Langugebottom extends StatelessWidget {
  const Langugebottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15,),
            Selecteditem(selected: 'English',),
            SizedBox(height: 20,),
            Unselected(unselected: "العربيه",)
          ],

        ),
      ),
    );
  }
}
