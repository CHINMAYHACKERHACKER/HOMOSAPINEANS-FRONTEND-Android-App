import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/home_screen/bottom_navbar.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/login_screen/login_screen.dart';
import 'package:homo_sapiens/view/signup_screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
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
      home: const HomeScreen(),
    );
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      // scaffoldBackgroundColor: Colors.white,
      cardColor: AppColors.kLightGrey,
      colorScheme: const ColorScheme.light(),
      // useMaterial3: true,
      primarySwatch: Colors.amber,
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
          foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
          foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      typography: Typography(black: Typography.blackCupertino));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // scaffoldBackgroundColor: Colors.black,
    primarySwatch: Colors.amber,
    cardColor: AppColors.kLightGrey,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(AppColors.kWhite.withOpacity(0.6)),
        foregroundColor: const MaterialStatePropertyAll(AppColors.kBlack),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(AppColors.kWhite.withOpacity(0.6)),
        foregroundColor: const MaterialStatePropertyAll(AppColors.kBlack),
      ),
    ),
    // useMaterial3: true,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}
