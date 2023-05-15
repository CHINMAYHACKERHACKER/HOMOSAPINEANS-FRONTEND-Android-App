import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class ProfileFollowingDetails extends StatelessWidget {
  const ProfileFollowingDetails({
    super.key,
    required this.text,
    required this.details,
  });
  final String text;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  name: text,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  name: details,
                  color: AppColors.kWhite,
                ),
              ],
            ),
            AppSize.kWidth10,
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 40,
                width: 0.5,
                color: AppColors.kWhite,
              ),
            )
          ],
        ),
      ],
    );
  }
}
