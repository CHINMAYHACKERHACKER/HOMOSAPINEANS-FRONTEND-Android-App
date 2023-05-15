import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

PreferredSizeWidget profileAppBarWidget(String text, context) {
  return AppBar(
    backgroundColor: AppColors.kBaseColor,
    title: TextWidget(
      name: text,
      fontWeight: FontWeight.bold,
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.kWhite,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
        ),
      ),
    ],
  );
}
