import 'package:flutter/material.dart';
import 'package:islamii/home/pages/ahadeth.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:islamii/styles/appstyle.dart';
import 'package:provider/provider.dart';
class Ahedthdetailsscreen extends StatelessWidget {
  static const String routename =  "ahadethdetails";
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider =Provider.of<Settingsprovider>(context);
    hadethcontent arg = ModalRoute.of(context)?.settings.arguments as hadethcontent;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(settingsprovider.themeMode==ThemeMode.dark
              ?"assets/images/bg.png"
              :"assets/images/background.png"),fit: BoxFit.fill ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(arg.title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Card(
                    child: SingleChildScrollView(child: Text(arg.content,style:Theme.of(context).textTheme.bodyLarge)
                  ),
                ),
                )],
            )
        ));
  }
}
class hadethcontent{
  String title;
  String content;
  hadethcontent({required this.title,required this.content});
}
