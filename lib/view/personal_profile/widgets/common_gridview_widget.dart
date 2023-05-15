import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class CommonGridViewWidget extends StatelessWidget {
  const CommonGridViewWidget({
    super.key,
    required this.text,
    required this.subText,
    required this.widget,
    this.itemCount,
    required this.iconData,
  });

  final String text;
  final String subText;
  final Widget widget;
  final int? itemCount;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      color: AppColors.kWhite.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  iconData,
                  color: AppColors.kWhite.withOpacity(0.5),
                ),
                label: TextWidget(
                  name: text,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kDarkPrimary,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: TextWidget(name: subText),
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: itemCount,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 25,
              childAspectRatio: 5 / 7.5,
            ),
            itemBuilder: (context, index) {
              return widget;
              // Column(
              //   children: [
              //     Container(
              //       height: 100,
              //       decoration: BoxDecoration(
              //         color: AppColors.kDarkPrimary,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     AppSize.kHeight5,
              //     const TextWidget(name: "Aliana Stew"),
              //     const TextWidget(name: "Father"),
              //   ],
              // );
            },
          ),
        ],
      ),
    );
  }
}
