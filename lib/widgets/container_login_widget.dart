import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.kDarkPrimary,
        ),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
