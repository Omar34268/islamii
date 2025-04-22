import 'package:flutter/material.dart';
import 'package:islamii/home/pages/selectedtheme.dart';
import 'package:islamii/home/pages/unselectedtheme.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:provider/provider.dart';

class Themebottom extends StatelessWidget {
  const Themebottom({super.key});

  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider=Provider.of<Settingsprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 15,),
          Selectedtheme(selectedtheme: settingsprovider.themeMode==ThemeMode.dark?"Dark":"Light",),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              settingsprovider.changetheme(settingsprovider.themeMode==ThemeMode.dark
              ?
              ThemeMode.light:ThemeMode.dark);
            },
              child: Unselectedtheme(unselectedtheme: settingsprovider.themeMode==ThemeMode.dark?"Light":"Dark",))
        ],

      ),
    );
  }
}
