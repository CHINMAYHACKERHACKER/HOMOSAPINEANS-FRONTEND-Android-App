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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/images/Group 383.svg',
                        height: 27,
                      ),
                    ),

                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Text(
                          'E=HOMO SAPIENS',
                          style: TextStyle(
                            fontSize: 17,
                            // color: AppColors.kWhite,
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
                    // const Spacer(),
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
                                        'https://images.hindustantimes.com/img/2022/04/01/1600x900/2f731094-a9c1-11ec-9297-ed70bb26c8ff_1648825261500.jpg'),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: NetworkImage(
                                        'https://assets.website-files.com/5ab4a7f2a6f17cdc68374b6a/5aea97e249aae4193e09ce60_YS%20logos-01.png'),
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
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 2),
                        shape: RoundedRectangleBorder(
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
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg'),
                                            fit: BoxFit.contain),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: AppColors.kDarkPrimary,
                                          width: 1,
                                        )),
                                    child: Container(
                                      height: 10,
                                    ),
                                  ),
                                  AppSize.kWidth10,
                                  const TextWidget(
                                    name: 'Dhanush',
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: 'Chalkduster',
                                    // color: AppColors.kWhite,
                                  ),
                                  const Spacer(),
                                  PopupBtn(),
                                ],
                              ),
                            ),
                            Container(
                              height: 550,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const RectButton(
                                            reactbtns: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 19,
                                            ),
                                            title: 'Lovely',
                                          ),
                                          const TextWidget(
                                            name: '4999',
                                            // color: AppColors.kWhite,
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const RectButton(
                                            reactbtns: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 19,
                                            ),
                                            title: 'Amazing',
                                          ),
                                          const TextWidget(
                                            name: '4999',
                                            // color: AppColors.kWhite,
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const RectButton(
                                            reactbtns: Icon(
                                              Icons.workspace_premium_rounded,
                                              color: Colors.orange,
                                              size: 19,
                                            ),
                                            title: 'Outstanding',
                                          ),
                                          TextWidget(
                                            name: '240',
                                            // color: AppColors.kWhite
                                            //     .withOpacity(0.6),
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      AppSize.kWidth5,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            // backgroundColor: AppColors.kWhite
                                            // .withOpacity(0.3),
                                            radius: 15,
                                            child: Center(
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.message_outlined,
                                                    size: 15,
                                                    // color: AppColors.kWhite,
                                                  )),
                                            ),
                                          ),
                                          TextWidget(
                                            name: '740',
                                            // color: AppColors.kWhite
                                            //     .withOpacity(0.6),
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            // backgroundColor: AppColors.kWhite
                                            // .withOpacity(0.3),
                                            child: Center(
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.share,
                                                    size: 15,
                                                    // color: AppColors.kWhite,
                                                  )),
                                            ),
                                          ),
                                          TextWidget(
                                            name: '740',
                                            // color: AppColors.kWhite
                                            //     .withOpacity(0.6),
                                            fontSize: 9,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Divider(),
                                  const TextWidget(
                                    name:
                                        'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa',
                                    // color: AppColors.kWhite,
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
