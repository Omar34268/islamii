import 'package:flutter/material.dart';

class Settingsprovider extends ChangeNotifier{

  ThemeMode themeMode= ThemeMode.light;
  changetheme(ThemeMode newmode){
    if(newmode==themeMode) return;
    themeMode = newmode;
    notifyListeners();
  }
  String language = "en";
  changelanguage(String newlanguage){
    if(newlanguage==language) return;
    language =newlanguage;
    notifyListeners();
  }


}