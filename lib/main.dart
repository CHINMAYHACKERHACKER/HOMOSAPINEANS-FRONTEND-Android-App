import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/home_screen/bottom_navbar.dart';
import 'package:homo_sapiens/view/home_screen/bottonm_nav_two.dart';
import 'package:homo_sapiens/view/home_screen/video/shoot_share.dart';

import 'view/home_screen/textedits/text_edits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = MediaQuery.of(context).platformBrightness;

    // Provider.of<ThemeModeProvider>(context).dark == true
    //     ? SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //         systemNavigationBarColor: Colors.red,
    //         statusBarColor: Colors.white,
    //         statusBarBrightness: Brightness.dark,
    //         systemNavigationBarIconBrightness: Brightness.dark,
    //       ))
    //     : SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //         systemNavigationBarColor: Colors.yellow,
    //         statusBarColor: Colors.white,
    //         statusBarBrightness: Brightness.light,
    //         systemNavigationBarIconBrightness: Brightness.light,
    //       ));
    // final isDarkMode =
    //     MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      // theme: ThemeData(
      //   useMaterial3: true,

      //   scaffoldBackgroundColor: AppColors.kBaseColor,
      //   primarySwatch: Colors.blue,
      //   appBarTheme: const AppBarTheme(
      //       backgroundColor: AppColors.kBaseColor,
      //       foregroundColor: AppColors.kWhite),
      //   bottomAppBarTheme: BottomAppBarTheme(color: AppColors.kGrey),
      //   // fontFamily: 'Chalkduster',
      // ),
      home: SecondBottomNav(),
    );
  }
}

class ThemeClass {
  // static ThemeData lightTheme = ThemeData(
  //     brightness: Brightness.light,
  //     // scaffoldBackgroundColor: Colors.white,
  //     cardColor: AppColors.kLightGrey,
  //     colorScheme: const ColorScheme.light(),
  //     // useMaterial3: true,
  //     primarySwatch: Colors.amber,
  //     iconButtonTheme: IconButtonThemeData(
  //       style: ButtonStyle(
  //         backgroundColor:
  //             MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
  //         foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
  //       ),
  //     ),
  //     elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ButtonStyle(
  //         backgroundColor:
  //             MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
  //         foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
  //       ),
  //     ),
  //     appBarTheme: const AppBarTheme(
  //         backgroundColor: Colors.white, foregroundColor: Colors.black),
  //     typography: Typography(black: Typography.blackCupertino));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.kBaseColor,
    primarySwatch: Colors.amber,
    cardColor: AppColors.kLightGrey,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(AppColors.kWhite.withOpacity(0.6)),
        foregroundColor: const MaterialStatePropertyAll(AppColors.kBlack),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xff28293d)),
        foregroundColor: MaterialStatePropertyAll(AppColors.kWhite),
      ),
    ),
    // useMaterial3: true,
    fontFamily: 'Ysabeau',
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}
