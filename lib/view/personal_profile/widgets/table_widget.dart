import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.text,
    this.iconData,
    required this.itemCount,
  });
  final String text;
  final IconData? iconData;
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
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return Table(
                border: TableBorder.all(color: AppColors.kWhite),
                children: const [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          name: "First Name",
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          name: "Ravichandra",
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: itemCount,
          ),
        ],
      ),
    );
  }
}
