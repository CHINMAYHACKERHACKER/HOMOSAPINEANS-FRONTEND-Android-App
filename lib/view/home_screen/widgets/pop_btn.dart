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
        child: SvgPicture.asset(
          'assets/images/Group 383.svg',
          height: 24,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.all(0),
        color: AppColors.kBlack,
        surfaceTintColor: AppColors.kWhite,

        // add icon, by default "3 dot" icon
        // icon: Icon(Icons.book)
        itemBuilder: (context) {
          return [
            PopupMenuItem<int>(
                value: 1,
                labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                    TextStyle(color: AppColors.kWhite)),
                child: TextWidget(
                  name: 'If new Connection',
                  fontSize: 13,
                )),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Watch My Story",
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Message",
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Send Friend Request",
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Follow",
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Ignore",
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              labelTextStyle: MaterialStatePropertyAll<TextStyle>(
                  TextStyle(color: AppColors.kWhite)),
              child: PopValues(
                values: "Report",
              ),
            ),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            print("My account menu is selected.");
          } else if (value == 1) {
            print("Settings menu is selected.");
          } else if (value == 2) {
            print("Logout menu is selected.");
          }
        });
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
          // decoration: BoxDecoration(
          //     // borderRadius:
          //     //     BorderRadius.circular(8),
          //     ),
          // padding: EdgeInsets.all(8),
          // width: double.infinity,
          color: Color.fromARGB(255, 59, 59, 59),
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
