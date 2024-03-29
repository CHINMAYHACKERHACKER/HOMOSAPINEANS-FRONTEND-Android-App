import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/FreedomWriter/Freedom_Writers.dart';
import 'package:homo_sapiens/view/home_screen/video/shoot_share.dart';
import 'package:homo_sapiens/view/home_screen/widgets/custom_drawer.dart';
import 'package:homo_sapiens/view/home_screen/widgets/pop_btn.dart';
import 'package:homo_sapiens/view/home_screen/widgets/react_text.dart';
import 'package:homo_sapiens/widgets/custom_appbar.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:readmore/readmore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 220,
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     icon: SvgPicture.asset(
        //       'assets/images/Group 383.svg',
        //       height: 27,
        //     ),
        //     onPressed: () => Scaffold.of(context).openDrawer(),
        //   ),
        // ),
        actions: const [
          CustomAppbar(),
        ],
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Builder(
              builder: (context) => IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/Group 493.svg',
                    height: 27,
                  ),
                  onPressed: () {}
                  // => Scaffold.of(context).openDrawer(),
                  ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: const [
                Text(
                  'E = homoSapiens',
                  style: TextStyle(
                    fontSize: 23,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Positioned(
                  right: 2,
                  bottom: 16,
                  child: TextWidget(
                    name: "∞",
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
      drawer: Drawer(
        child: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const CustomDrawer()),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                AppSize.kHeight10,
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return index == 0
                            ? Container(
                                width: 72,
                                height: 70,
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 209, 26, 169),
                                  // image: index % 2 == 0
                                  //     ? const DecorationImage(
                                  //         image: NetworkImage(
                                  //             'https://1.bp.blogspot.com/-PfQCgUo2U3A/X7XSmSUL9HI/AAAAAAAACkc/kAgYhIGd2hwjqwTsOdgE2efXPopSvFQlACLcBGAsYHQ/w1200-h630-p-k-no-nu/Dulquer%2BSalmaan%2BHit%2BAnd%2BFlop%2BMovies%2BList.jpg'),
                                  //         fit: BoxFit.cover)
                                  //     : const DecorationImage(
                                  //         image: NetworkImage(
                                  //             'https://upload.wikimedia.org/wikipedia/commons/b/be/Mamta_Mohandas_Red_FM_2020.jpg'),
                                  //         fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(19),
                                  // border: Border.all(
                                  //     color: AppColors.kWhite, width: 2)
                                ),
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: AppColors.kWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Connections",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.kWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            : Container(
                                width: 57,
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: AppColors.kDarkPrimary,
                                  image: index % 2 == 0
                                      ? const DecorationImage(
                                          image: NetworkImage(
                                              'https://1.bp.blogspot.com/-PfQCgUo2U3A/X7XSmSUL9HI/AAAAAAAACkc/kAgYhIGd2hwjqwTsOdgE2efXPopSvFQlACLcBGAsYHQ/w1200-h630-p-k-no-nu/Dulquer%2BSalmaan%2BHit%2BAnd%2BFlop%2BMovies%2BList.jpg'),
                                          fit: BoxFit.cover)
                                      : const DecorationImage(
                                          image: NetworkImage(
                                              'https://upload.wikimedia.org/wikipedia/commons/b/be/Mamta_Mohandas_Red_FM_2020.jpg'),
                                          fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(19),
                                ),
                              );
                      }),
                ),
                AppSize.kHeight10,
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => FreedomWritersScreen()));
                //     },
                //     child: Icon(Icons.add)),
                ListView.builder(
                    itemCount: 10,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
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
                                        image: index % 2 == 0
                                            ? const DecorationImage(
                                                image: NetworkImage(
                                                    'https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg'),
                                                fit: BoxFit.contain)
                                            : const DecorationImage(
                                                image: NetworkImage(
                                                    'https://st1.latestly.com/wp-content/uploads/2021/09/Mammootty-Birthday-2.jpg'),
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
                                  index % 2 == 0
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            TextWidget(
                                              name: '_Rashid028',
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16,
                                              fontFamily: 'Chalkduster',
                                              // color: AppColors.kWhite,
                                            ),
                                            TextWidget(
                                              name: 'Actor ',
                                              textAlign: TextAlign.start,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              fontFamily: 'Ysabeau',
                                              // color: AppColors.kWhite,
                                            ),
                                          ],
                                        )
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            TextWidget(
                                              name: 'Mammootty ',
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: 'Chalkduster',
                                              // color: AppColors.kWhite,
                                            ),
                                            TextWidget(
                                              name: 'Actor ',
                                              textAlign: TextAlign.start,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              fontFamily: 'Ysabeau',
                                              // color: AppColors.kWhite,
                                            ),
                                          ],
                                        ),
                                  const Spacer(),
                                  const PopupBtn(),
                                ],
                              ),
                            ),
                            index % 2 == 0
                                ? Container(
                                    height: 550,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg'),
                                            fit: BoxFit.cover)),
                                  )
                                : Container(
                                    height: 550,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://st1.latestly.com/wp-content/uploads/2021/09/Mammootty-Birthday-2.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 5),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          RectButton(
                                            reactbtns: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 19,
                                            ),
                                            title: 'Lovely',
                                          ),
                                          TextWidget(
                                            name: '4999',
                                            // color: AppColors.kWhite,
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          RectButton(
                                            reactbtns: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 19,
                                            ),
                                            title: 'Amazing',
                                          ),
                                          TextWidget(
                                            name: '4999',
                                            // color: AppColors.kWhite,
                                            fontSize: 9,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          RectButton(
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
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const CommentScreen()));
                                                  },
                                                  icon: const Icon(
                                                    Icons.message_outlined,
                                                    size: 15,
                                                    // color: AppColors.kWhite,
                                                  )),
                                            ),
                                          ),
                                          const TextWidget(
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
                                          const TextWidget(
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
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: ReadMoreText(
                                      'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa  ',
                                      trimLines: 1,
                                      trimLength: 100,
                                      lessStyle: TextStyle(
                                          color: AppColors.kLightPrimary),
                                      moreStyle: TextStyle(
                                          color: AppColors.kLightPrimary),
                                    ),
                                  ),
                                  // const TextWidget(
                                  //   fontFamily: 'Ysabeau',
                                  //   name:
                                  //       'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa',
                                  //   // color: AppColors.kWhite,

                                  //   fontSize: 15,
                                  // )
                                  AppSize.kHeight10,
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

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comment'),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.grey.withOpacity(0.3),
                leading: const Icon(Icons.message),
                title: const Text('4,999 Comments'),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                padding: EdgeInsets.all(8),
                physics: const ScrollPhysics(),
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://img.mensxp.com/media/content/2021/Jan/South-Indian-Actors-With-Great-Sense-Of-Style-3_600d82fbe65ab.jpeg?w=900&h=1200&cc=1'))),
                        ),
                        AppSize.kWidth10,
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.kWhite,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                AppSize.kHeight10,
                                Text(
                                  'for Image, Language, Audio, Video, 3D, Biology and more. Learn more about Stability AI’s high performance compute power. ... Stability AIs open-source Alpha version of StableLM showcases the power of small, efficient models that can generate high-performing text and code locally',
                                  style: TextStyle(color: AppColors.kBlack),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.thumb_up_alt_outlined,
                                          color: AppColors.kGreen,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.thumb_down_alt_outlined,
                                          color: Colors.red,
                                        )),
                                    TextButton(
                                        onPressed: () {}, child: Text('Replay'))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  fillColor: AppColors.kGrey,
                  filled: true,
                  hintText: 'Write a message..',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  )))),
    );
  }
}
