import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.name,
    this.height,
    this.width,
    this.backgroundColor,
    this.shape,
  });
  final String name;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        child: TextWidget(
          name: name,
          color: AppColors.kWhite,
        ),
      ),
    );
  }
}
