import 'package:flutter/material.dart';
import 'package:islamii/home/pages/ahadeth.dart';
import 'package:islamii/home/pages/moshaf.dart';
import 'package:islamii/home/pages/radio.dart';
import 'package:islamii/home/pages/sebha.dart';
import 'package:islamii/home/pages/setting_tab.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:islamii/styles/appstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class Homescreen extends StatefulWidget{
  static const String routename = "home";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selected_index=0;
  List<Widget> pages=[
    radio(),
    sebha(),
    ahadeth(),
    moshaf(),
    SettingTab()
  ];

  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider =Provider.of<Settingsprovider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingsprovider.themeMode==ThemeMode.dark?
                "assets/images/bg.png":
                "assets/images/background.png"),
        fit:  BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
          onTap: (index){
              setState(() {
                selected_index=index;
              });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                label: AppLocalizations.of(context)!.tasbeeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/ahadeth_icon.png")),
                label: AppLocalizations.of(context)!.ahadeth),
            BottomNavigationBarItem(
           backgroundColor: Theme.of(context).colorScheme.primary,
             icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                label:AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
        ],),
        body: pages[selected_index],
      ),
    );
  }
}