import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:readmore/readmore.dart';

import '../../../widgets/custom_appbar.dart';

class ShootandShare extends StatelessWidget {
  const ShootandShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          height: 700,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg',
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              AppSize.kHeight50,
              AppSize.kHeight10,
              Container(
                height: 400,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.05),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text(
                            'Lovely',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            'Amazing',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.amber,
                          ),
                          Text(
                            'Outstanding',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.thumb_down_alt_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            'Dislike',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(Icons.comment),
                          Text(
                            'Comment',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(Icons.share),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '788',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(
                5,
                (index) {
                  return Container(
                    width: 330,
                    height: 100,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.kBaseColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://www.lovesove.com/wp-content/uploads/2021/06/Girls-Dp-Original-Lovesove.jpg',
                              ),
                            ),
                            AppSize.kWidth10,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Jack Daniel',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Graphic Designer',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              icon: SvgPicture.asset(
                                'assets/images/Group 493.svg',
                                height: 25,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                          ],
                        ),

                        RichText(
                          text: TextSpan(
                              text:
                                  'The tiger is the largest living cat species \n',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'more',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 52, 175, 224),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        showModalBottomSheet<void>(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                height: 250,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AppSize.kWidth30,
                                                        const Text(
                                                          'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa  ',
                                                          maxLines: 1,
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context),
                                                          icon: const Icon(
                                                              Icons.close),
                                                        ),
                                                        AppSize.kWidth20,
                                                      ],
                                                    ),
                                                    // const Spacer(),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => navpage),
                                        // );
                                        // navigate to desired screen
                                      })
                              ]),
                        )

                        // const Padding(
                        //   padding: EdgeInsets.all(5.0),
                        //   child: ReadMoreText(
                        //     'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boa  ',
                        //     trimLines: 1,
                        //     trimLength: 50,
                        //     lessStyle:
                        //         TextStyle(color: AppColors.kLightPrimary),
                        //     moreStyle:
                        //         TextStyle(color: AppColors.kLightPrimary),
                        //   ),
                        // ),
                        // Align(
                        //   alignment: Alignment.topRight,
                        //   child: SizedBox(
                        //     height: 25,
                        //     child: ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //         padding:
                        //             const EdgeInsets.symmetric(horizontal: 8),
                        //         textStyle: const TextStyle(
                        //           fontWeight: FontWeight.w400,
                        //           fontSize: 9,
                        //         ),
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(5.0),
                        //         ),
                        //       ),
                        //       onPressed: () {},
                        //       child: const Text(
                        //         'Description',
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Shoot extends StatefulWidget {
  @override
  _ShootState createState() => _ShootState();
}

class _ShootState extends State<Shoot> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    Page1(),
    Page1(),
    Page1(),
    Page1(),
  ];

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E = Shoot and Share",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const <Widget>[],
      ),
      body: PageView(scrollDirection: Axis.vertical, children: _list),
    );
  }
}

class ShotAndShare extends StatefulWidget {
  const ShotAndShare({super.key});

  @override
  State<ShotAndShare> createState() => _ShotAndShareState();
}

class _ShotAndShareState extends State<ShotAndShare> {
  List Images = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/237/200/300'
  ];
  List content = ['hcsjhdhdsjh', 'hdsgcsdhcggsd', 'hdsggsdg'];
  List time = ['49 Minutes Ago', '52 Minuts Ago', '52 Minuts Ago'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
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
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: ListView.builder(
                itemCount: content.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/237/200/300',
                              scale: 1),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                                     );
                })),
      ),
    );
  }
}
