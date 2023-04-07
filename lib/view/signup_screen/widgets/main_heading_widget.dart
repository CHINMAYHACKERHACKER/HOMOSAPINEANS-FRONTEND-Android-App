import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/login_screen/widgets/subheading_widget.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class MainHeadingWidget extends StatelessWidget {
  const MainHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 110,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          const Positioned(
            top: 0,
            left: 120,
            child: Align(
              alignment: Alignment.center,
              child: TextWidget(
                name: "∞",
                color: AppColors.kLightPrimary,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: -80,
            right: 1,
            child: TextWidget(
              name: "∞",
              color: AppColors.kLightPrimary.withOpacity(0.3),
              fontSize: 160,
            ),
          ),
          Positioned(
            bottom: 1,
            right: 12,
            child: TextWidget(
              name: "e=hs".toUpperCase(),
              fontWeight: FontWeight.bold,
              color: AppColors.kWhite,
              fontSize: 57,
            ),
          ),
          Positioned(bottom: 4, right: 10, child: const SubHeadingWidget()),
        ],
      ),
    );
  }
}
