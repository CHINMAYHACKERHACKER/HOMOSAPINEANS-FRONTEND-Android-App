import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/AmazingReviews/AmazingBottomNav.dart';
import 'package:homo_sapiens/view/AmazingReviews/Amazingeviews.dart';
import 'package:homo_sapiens/view/FreedomWriter/Freedom_Writers.dart';
import 'package:homo_sapiens/view/FreedomWriter/Widgets/FreedomWriters_bootm.dart';
import 'package:homo_sapiens/view/home_screen/bottom_navbar.dart';
import 'package:homo_sapiens/view/home_screen/bottonm_nav_two.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/home_screen/video/shoot_share.dart';
import 'package:homo_sapiens/view/home_screen/video/widgets/create_video.dart';
import 'package:homo_sapiens/view/login_screen/login_screen.dart';
import 'package:homo_sapiens/view/runnig_pictures/running_home.dart';
import 'view/home_screen/textedits/text_edits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
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
      // home: FreedomWritersScreen(),
      // home: SecondBottomNav(),
      home: FreedomBottomNavi(),
    );
  }
}

class ThemeClass {
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
    fontFamily: 'Ysabeau',
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}
