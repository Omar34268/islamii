import 'package:flutter/material.dart';
import 'package:islamii/ahedth-details-screen.dart';
import 'package:islamii/home/Homescreen.dart';
import 'package:islamii/home/pages/ahadeth.dart';
import 'package:islamii/home/pages/moshaf.dart';
import 'package:islamii/home/qurandetailscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          elevation: 15,
          color: Colors.white,
          margin: EdgeInsets.all(30),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xffB7935F),
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 45,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
              size: 45,
          )

        ),
        dividerTheme:DividerThemeData(
          thickness: 2,
          color: Color(0xffB7935F)
        ) ,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        ),
      ),
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


