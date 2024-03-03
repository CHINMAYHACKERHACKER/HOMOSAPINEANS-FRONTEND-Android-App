import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

class FreedomReviewWidget extends StatelessWidget {
  const FreedomReviewWidget({
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
            color: Colors.orange,
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
                    Icons.rate_review_rounded,
                    color: AppColors.kGrey,
                    size: 50,
                  ),
                ),
                AppSize.kHeight20,
                const Text(
                  'E = FreedomWriters',
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
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10),
                      itemCount: 12,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 78, 78, 85),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dender Politics'),
                                SizedBox(
                                  width: 210,
                                  child: Text(
                                    'Is simply dummy text ot the printing Is simply dummy text ot the printing',
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
