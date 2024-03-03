import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/mediaquery.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/home_screen/menu/widgets/amazing_review.dart';
import 'package:homo_sapiens/view/home_screen/menu/widgets/freedom_writer.dart';
import 'package:homo_sapiens/view/home_screen/menu/widgets/menu.dart';
import 'package:homo_sapiens/view/home_screen/menu/widgets/running_pic.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final List<String> imageList = [
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
  ];
  final List<Widget> wigetList = [
    // const Menuwidgets(),
    Stack(children: [
      AppSize.kHeight40,
      const HomeScreen(),
      Align(
        alignment: Alignment.topCenter,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.kWhite,
          child: Icon(
            Icons.person,
            color: AppColors.kGrey,
            size: 50,
          ),
        ),
      ),
    ]),
    RunningPicWidget(),
    const AmazingReviewWidget(),
    const FreedomReviewWidget(),
  ];

  List<Color> color = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: displayHeight(context) * 0.7,
          aspectRatio: 4 / 2,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: false,
        ),
        items: wigetList.map((e) => e).toList(),
      ),
    );
  }
}
