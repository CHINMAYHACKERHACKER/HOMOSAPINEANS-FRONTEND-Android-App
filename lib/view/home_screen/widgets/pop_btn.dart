import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class PopupBtn extends StatelessWidget {
  const PopupBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        padding: const EdgeInsets.all(5),
        color: AppColors.kBlack.withOpacity(0.8),
        surfaceTintColor: AppColors.kWhite,

        // add icon, by default "3 dot" icon
        // icon: Icon(Icons.book)
        itemBuilder: (context) {
          return [
            const PopupMenuItem<int>(
                value: 5,
                // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                //   TextStyle(color: AppColors.kWhite),
                // ),
                child: TextWidget(
                  name: 'If new Connection',
                  fontSize: 13,
                )),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Watch My Story",
              ),
            ),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Message",
              ),
            ),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Make Friend ?",
              ),
            ),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Follow",
              ),
            ),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Ignore",
              ),
            ),
            const PopupMenuItem<int>(
              value: 1,
              // labelTextStyle: MaterialStatePropertyAll<TextStyle>(
              //   TextStyle(color: AppColors.kWhite),
              // ),
              child: PopValues(
                values: "Report",
              ),
            ),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            log("My account menu is selected.");
          } else if (value == 1) {
            log("Settings menu is selected.");
          } else if (value == 2) {
            log("Logout menu is selected.");
          }
        },
        child: SvgPicture.asset(
          'assets/images/Group 493.svg',
          height: 24,
        ));
  }
}

class PopValues extends StatelessWidget {
  final String values;
  const PopValues({
    super.key,
    required this.values,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // decoration: BoxDecoration(

          //     ),
          // padding: EdgeInsets.all(8),
          // width: double.infinity,
          color: const Color.fromARGB(255, 59, 59, 59),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4),
            child: Center(
              child: TextWidget(
                textAlign: TextAlign.center,
                fontSize: 11,
                color: AppColors.kWhite,
                name: values,
              ),
            ),
          )),
    );
  }
}
