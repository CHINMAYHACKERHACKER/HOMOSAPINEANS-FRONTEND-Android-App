import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class RectButton extends StatelessWidget {
  final dynamic reactbtns;
  final String? title;
  const RectButton({
    super.key,
    this.reactbtns,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            textStyle:
                const TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
            backgroundColor: AppColors.kWhite.withOpacity(0.3),
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          icon: reactbtns,
          label: TextWidget(
            name: title!,
            fontSize: 10,
          )),
    );
  }
}
