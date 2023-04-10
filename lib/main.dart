import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/home_screen/bottom_navbar.dart';
import 'package:homo_sapiens/view/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.kBaseColor,
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.kBaseColor,
              foregroundColor: AppColors.kWhite),
          bottomAppBarTheme: BottomAppBarTheme(color: AppColors.kGrey)),
      home: BotomNavigationBar(),
    );
  }
}
