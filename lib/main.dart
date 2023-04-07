import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
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
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.kBaseColor,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: AppColors.kBaseColor,
              foregroundColor: AppColors.kWhite)),
      home: const LoginScreen(),
    );
  }
}
