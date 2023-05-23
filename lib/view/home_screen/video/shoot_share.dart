import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

class ShootandShare extends StatelessWidget {
  const ShootandShare({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network('https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
        ]);
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
                  fit: BoxFit.fitWidth)),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 500,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.05)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
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
                      )
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: Column(children: [
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
                      )
                    ])),
                InkWell(
                    onTap: () {},
                    child: Column(children: [
                      Icon(
                        Icons.ac_unit_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        'Outstandig',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '788',
                        style: TextStyle(fontSize: 12),
                      )
                    ])),
                InkWell(
                    onTap: () {},
                    child: Column(children: [
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
                      )
                    ])),
                InkWell(
                    onTap: () {},
                    child: Column(children: [
                      Icon(Icons.comment),
                      Text(
                        'Comment',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '788',
                        style: TextStyle(fontSize: 12),
                      )
                    ])),
                InkWell(
                    onTap: () {},
                    child: Column(children: [
                      Icon(Icons.share),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '788',
                        style: TextStyle(fontSize: 12),
                      )
                    ])),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          child: Container(
            width: 320,
            // height: 200,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.kBaseColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.lovesove.com/wp-content/uploads/2021/06/Girls-Dp-Original-Lovesove.jpg'),
                    ),
                    AppSize.kWidth10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/images/Group 493.svg',
                        height: 25,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Graphic Designer and Trends, A study Between East and West',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              // backgroundColor: AppColors.kBlack,
                              // foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Description',
                            ),
                          ),
                        );
                      },
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network('https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
        ]);
  }
}

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network('https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
        ]);
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network('https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
        ]);
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network('https://i.ytimg.com/vi/gdKbDV0hjUQ/frame0.jpg'),
        ]);
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
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    Page6()
  ];

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E = Shoot and Share",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[],
      ),
      body: PageView(
        children: _list,
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          print("Current page number is " + num.toString());
          _curr = num;
        },
      ),
      // floatingActionButton: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       FloatingActionButton(
      //           onPressed: () {
      //             // setState(() {
      //             //  _list.add(
      //             //   new Center(child: new Text("2001", style: new TextStyle(fontSize: 60.0))),
      //             // );
      //             // });
      //             // if(_curr!=_list.length-1)
      //             //   controller.jumpToPage(_curr+1);
      //             //   else
      //             //   controller.jumpToPage(0);
      //           },
      //           child: Icon(Icons.add)),
      //       FloatingActionButton(
      //           onPressed: () {
      //             // _list.removeAt(_curr);
      //             // setState(() {
      //             //   controller.jumpToPage(_curr-1);
      //             // });
      //           },
      //           child: Icon(Icons.delete)),
      //     ])
    );
  }
}
