import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
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
                    SvgPicture.asset('assets/images/Group 383.svg'),
                    AppSize.kWidth20,
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Text(
                          'E=HOMO SAPIENS',
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Positioned(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          padding: const EdgeInsets.all(1),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 22,
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            IconButton(
                                icon: const Icon(
                                  Icons.notifications_none_rounded,
                                  size: 22,
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
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)),
                            backgroundColor: AppColors.kGrey,
                            foregroundColor: Colors.pinkAccent,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.wechat,
                            size: 12,
                          ),
                          label: const Text('Textism'),
                        ),
                        AppSize.kWidth5
                      ],
                    ),
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
                                ? DecorationImage(
                                    image: NetworkImage(
                                        'https://s3.amazonaws.com/designco-web-assets/uploads/2020/03/thumb-hover-1.png'),
                                    fit: BoxFit.cover)
                                : DecorationImage(
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
                    physics: ScrollPhysics(),
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
                                  SvgPicture.asset(
                                      'assets/images/Group 383.svg'),
                                ],
                              ),
                            ),
                            Image.network(
                                'https://images.unsplash.com/photo-1545987796-200677ee1011?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    name: '4999 Lovers',
                                    color: AppColors.kWhite,
                                    fontSize: 9,
                                  ),
                                  TextWidget(
                                    name: '4999 Amazing',
                                    color: AppColors.kWhite,
                                    fontSize: 9,
                                  ),
                                  TextWidget(
                                    name: '4999 Outstanding',
                                    color: AppColors.kWhite,
                                    fontSize: 9,
                                  ),
                                  TextWidget(
                                    name: '240 comments. 740 shares',
                                    color: AppColors.kWhite.withOpacity(0.6),
                                    fontSize: 9,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                rectButton(),
                                rectButton(),
                                rectButton(),
                                CircleAvatar(
                                  backgroundColor:
                                      AppColors.kWhite.withOpacity(0.3),
                                  radius: 15,
                                  child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
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
                                        icon: Icon(
                                          Icons.share,
                                          size: 15,
                                          color: AppColors.kWhite,
                                        )),
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextWidget(
                                name:
                                    ' The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese The vest red front thinf og did so teh rain usuese  ',
                                color: AppColors.kWhite,
                                fontSize: 11,
                              ),
                            )
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

class rectButton extends StatelessWidget {
  const rectButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0)),
            backgroundColor: AppColors.kWhite.withOpacity(0.3),
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 19,
          ),
          label: Text('Lovely')),
    );
  }
}
