import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

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
                width: 60,
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '788',
                            style: TextStyle(fontSize: 12),
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
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(
                5,
                (index) {
                  return Container(
                    width: 330,
                    height: 150,
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Graphic Designer and Trends, A study Between East and West',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 25,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Description',
                              ),
                            ),
                          ),
                        ),
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
