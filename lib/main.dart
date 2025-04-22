import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/ahedth-details-screen.dart';
import 'package:islamii/home/Homescreen.dart';
import 'package:islamii/home/pages/ahadeth.dart';
import 'package:islamii/home/pages/moshaf.dart';
import 'package:islamii/home/qurandetailscreen.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:islamii/styles/appstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Settingsprovider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider = Provider.of<Settingsprovider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [

        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(settingsprovider.language) ,
      theme: Appstyle.lighttheme,
      darkTheme: Appstyle.darktheme,
      themeMode: settingsprovider.themeMode,
      initialRoute: Homescreen.routename,
      routes: {
        Homescreen.routename:(_)=>Homescreen(),
        moshaf.routename:(_)=>moshaf(),
        ahadeth.routename:(_)=>ahadeth(),
        Qurandetailscreen.routename:(_)=>Qurandetailscreen(),
        Ahedthdetailsscreen.routename:(_)=>Ahedthdetailsscreen()
      },
    );
  }
}


