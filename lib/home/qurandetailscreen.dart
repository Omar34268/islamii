import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/Quranchapter.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:islamii/styles/appstyle.dart';
import 'package:provider/provider.dart';
class Qurandetailscreen extends StatefulWidget {
  static const String routename = "Qurandetails";

  @override
  State<Qurandetailscreen> createState() => _QurandetailscreenState();
}

class _QurandetailscreenState extends State<Qurandetailscreen> {
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider =Provider.of<Settingsprovider>(context);
    Quranarg arg=ModalRoute.of(context)?.settings.arguments as Quranarg;
    if(suralines.isEmpty){
      loadfile(arg.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
           settingsprovider.themeMode==ThemeMode.dark?
            "assets/images/bg.png"
            :"assets/images/background.png"),fit: BoxFit.fill ),
      ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.suratitle),
          ),
          body: Card(
            child: suralines.isEmpty?Center(child: CircularProgressIndicator()):
                ListView.separated(
                itemBuilder: (context,index)=>(Quranchapter(chapter:suralines[index] ,index: index,)),
                separatorBuilder: (context,index)=>Divider(),
                itemCount: suralines.length,
                  ),
          )
        ));
  }

  List<String> suralines = [];


  loadfile(int index) async {
    String filecontent = await rootBundle.loadString("assets/files/${index+1}.txt");
    suralines = filecontent.split("\n");
    setState(() {

    });
    print(suralines);
  }
}
class Quranarg{
  String suratitle;
  int index;
  Quranarg({required this.suratitle,required this.index});
}
