import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

class RunningPicWidget extends StatelessWidget {
  const RunningPicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.topCenter,
      fit: StackFit.loose,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(top: 60),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                AppSize.kHeight10,
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.kWhite,
                  child: Icon(
                    Icons.photo_outlined,
                    color: AppColors.kGrey,
                    size: 50,
                  ),
                ),
                AppSize.kHeight20,
                const Text(
                  'E = Running Picture',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
                AppSize.kHeight20,
                Container(
                  // height: 495,
                  width: 290,
                  decoration: BoxDecoration(
                      color: AppColors.kBaseColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12)),
                  child: GridView.builder(
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 120,
                              childAspectRatio: 2.5 / 3.2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8),
                      itemCount: 12,
                      itemBuilder: (context, i) {
                        return Container(
                          decoration: BoxDecoration(
                              color: AppColors.kWhite,
                              borderRadius: BorderRadius.circular(8)),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
