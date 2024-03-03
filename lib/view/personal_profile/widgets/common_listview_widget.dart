import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class CommonListTileWidget extends StatelessWidget {
  const CommonListTileWidget({
    super.key,
    required this.text,
    required this.name,
    this.iconData,
    this.trailing,
    this.subtitle,
    this.leading,
    required this.itemCount,
  });
  final String text;
  final String name;
  final IconData? iconData;
  final Widget? trailing;
  final Widget? subtitle;
  final Widget? leading;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      color: AppColors.kWhite.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: AppColors.kWhite.withOpacity(0.4),
                title: TextWidget(name: name),
                subtitle: subtitle,
                trailing: trailing,
                leading: leading,
              );
            },
            itemCount: itemCount,
            separatorBuilder: (BuildContext context, int index) {
              return AppSize.kHeight10;
            },
          ),
        ],
      ),
    );
  }
}
