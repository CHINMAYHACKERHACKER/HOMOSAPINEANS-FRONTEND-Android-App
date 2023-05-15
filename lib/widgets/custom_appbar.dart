import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppSize.kWidth5,
        IconButton(
          padding: const EdgeInsets.all(1),
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
            size: 22,
            // color: AppColors.kWhite,
          ),
        ),
        Stack(
          children: <Widget>[
            IconButton(
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 22,
                  // color: AppColors.kWhite,
                ),
                padding: const EdgeInsets.all(1),
                onPressed: () {
                  // setState(() {
                  //   counter = 0;
                  // });
                }),
            // counter != 0 ?
            Positioned(
              right: 14,
              top: 11,
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 39, 24),
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: const BoxConstraints(
                  minWidth: 8,
                  minHeight: 8,
                ),

                // child: Text(
                //   '0',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 8,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
              ),
            )
            // : new Container()
            ,
          ],
        ),
        SizedBox(
          height: 29,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              // backgroundColor: AppColors.kGrey,
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.wechat,
              size: 12,
            ),
            label: const Text('Textism'),
          ),
        ),
        // AppSize.kWidth5
      ],
    );
  }
}
