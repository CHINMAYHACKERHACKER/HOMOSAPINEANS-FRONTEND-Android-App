import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/widgets/pop_btn.dart';
import 'package:homo_sapiens/view/home_screen/widgets/react_text.dart';
import 'package:homo_sapiens/widgets/custom_appbar.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                AppSize.kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppSize.kWidth5,
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/images/Group 383.svg',
                        height: 27,
                      ),
                    ),
                    AppSize.kWidth10,
                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Text(
                          'E=HOMO SAPIENS',
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Positioned(
                          right: 2,
                          bottom: 16,
                          child: TextWidget(
                            name: "∞",
                            color: AppColors.kLightPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CustomAppbar(),
                  ],
                ),
                AppSize.kHeight10,
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 57,
                          margin: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.kDarkPrimary,
                            image: (index != 0)
                                ? const DecorationImage(
                                    image: NetworkImage(
                                        'https://s3.amazonaws.com/designco-web-assets/uploads/2020/03/thumb-hover-1.png'),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: NetworkImage(
                                        'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f2c728e8-0a31-47bd-817c-b74935a8b6f8/dctu83w-59bc00a2-bfde-4152-8c29-709254f89e63.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2YyYzcyOGU4LTBhMzEtNDdiZC04MTdjLWI3NDkzNWE4YjZmOFwvZGN0dTgzdy01OWJjMDBhMi1iZmRlLTQxNTItOGMyOS03MDkyNTRmODllNjMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.YS2IqL1PgOIj4yrx-0zw_G0y919OYiRNOaTMI35iCGs'),
                                    fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(19),
                          ),
                        );
                      }),
                ),
                AppSize.kHeight10,
                ListView.builder(
                    itemCount: 10,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.kLightGrey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(19.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                          color: AppColors.kDarkPrimary,
                                          width: 1,
                                        )),
                                    child: const TextWidget(
                                      name: 'A',
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                  AppSize.kWidth5,
                                  const TextWidget(
                                    name: 'Aadhmi',
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: AppColors.kWhite,
                                  ),
                                  const Spacer(),
                                  PopupBtn(),
                                ],
                              ),
                            ),
                            Image.network(
                                'https://images.unsplash.com/photo-1545987796-200677ee1011?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const TextWidget(
                                        name: '4999 Lovers',
                                        color: AppColors.kWhite,
                                        fontSize: 9,
                                      ),
                                      const TextWidget(
                                        name: '4999 Amazing',
                                        color: AppColors.kWhite,
                                        fontSize: 9,
                                      ),
                                      const TextWidget(
                                        name: '4999 Outstanding',
                                        color: AppColors.kWhite,
                                        fontSize: 9,
                                      ),
                                      TextWidget(
                                        name: '240 comments. 740 shares',
                                        color:
                                            AppColors.kWhite.withOpacity(0.6),
                                        fontSize: 9,
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const RectButton(
                                        reactbtns: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 19,
                                        ),
                                        title: 'Lovely',
                                      ),
                                      const RectButton(
                                        reactbtns: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 19,
                                        ),
                                        title: 'Amazing',
                                      ),
                                      const RectButton(
                                        reactbtns: Icon(
                                          Icons.workspace_premium_rounded,
                                          color: Colors.orange,
                                          size: 19,
                                        ),
                                        title: 'Outstanding',
                                      ),
                                      AppSize.kWidth5,
                                      CircleAvatar(
                                        backgroundColor:
                                            AppColors.kWhite.withOpacity(0.3),
                                        radius: 15,
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.message_outlined,
                                                size: 15,
                                                color: AppColors.kWhite,
                                              )),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor:
                                            AppColors.kWhite.withOpacity(0.3),
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.share,
                                                size: 15,
                                                color: AppColors.kWhite,
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  const TextWidget(
                                    name:
                                        ' The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese  ',
                                    color: AppColors.kWhite,
                                    fontSize: 11,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            )),
      ),
    );
  }
}
