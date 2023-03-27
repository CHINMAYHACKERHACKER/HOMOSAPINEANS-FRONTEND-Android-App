import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class SubHeadingWidget extends StatelessWidget {
  const SubHeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          name: "e".toUpperCase(),
          color: AppColors.kWhite,
          fontSize: 8,
        ),
        const TextWidget(
          name: "xplore",
          color: AppColors.kLightPrimary,
          fontSize: 8,
        ),
        AppSize.kWidth5,
        const TextWidget(
          name: "=",
          color: AppColors.kLightPrimary,
          fontSize: 8,
        ),
        AppSize.kWidth5,
        TextWidget(
          name: "h".toUpperCase(),
          color: AppColors.kWhite,
          fontSize: 8,
        ),
        const TextWidget(
          name: "omo",
          color: AppColors.kLightPrimary,
          fontSize: 8,
        ),
        AppSize.kWidth5,
        TextWidget(
          name: "s".toUpperCase(),
          color: AppColors.kWhite,
          fontSize: 8,
        ),
        const TextWidget(
          name: "apiens",
          color: AppColors.kLightPrimary,
          fontSize: 8,
        ),
        AppSize.kWidth5,
        const TextWidget(
          name: "∞",
          color: AppColors.kWhite,
          fontSize: 8,
        ),
        AppSize.kWidth5,
        const TextWidget(
          name: "Infinitely",
          color: AppColors.kLightPrimary,
          fontSize: 8,
        ),
      ],
    );
  }
}
