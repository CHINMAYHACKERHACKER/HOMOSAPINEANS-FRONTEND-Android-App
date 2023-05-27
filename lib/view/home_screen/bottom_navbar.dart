import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/chat_screen/chat_home.dart';
import 'package:homo_sapiens/view/home_screen/carousal.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/home_screen/widgets/custom_bottomsheet.dart';
import 'package:homo_sapiens/view/personal_profile/personal_profile.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class BotomNavigationBar extends StatelessWidget {
// PersistentTabController _controller;

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  BotomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontSize: 16),
          icon: const Icon(
            CupertinoIcons.home,
          ),
          title: ("Home"),
          activeColorPrimary: AppColors.kLightPrimary,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          icon: const Icon(Icons.wechat),
          title: ("Textism"),
          activeColorPrimary: AppColors.kLightPrimary,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          onPressed: (p0) {
            showModalBottomSheet<void>(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9))),
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppSize.kWidth30,
                            const TextWidget(
                              name: 'Create',
                              fontSize: 30,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.close),
                            ),
                            AppSize.kWidth20,
                          ],
                        ),
                        // const Spacer(),
                        const Createpostbuttons(
                          icons: Icon(Icons.image_outlined),
                          text: 'Upload Image',
                        ),
                        const Createpostbuttons(
                          icons: Icon(Icons.movie_filter_outlined),
                          text: 'Upload Video',
                        ),
                        // const Createpostbuttons(
                        //   icons: Icon(Icons.play_circle_outline_rounded),
                        //   text: 'Whats New!',
                        // ),
                        const Createpostbuttons(
                          icons: Icon(Icons.wifi_rounded),
                          text: 'Go live',
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          contentPadding: 1,
          icon: const Icon(
            CupertinoIcons.add,
            size: 24,
            color: AppColors.kWhite,
          ),
          title: ("Post"),
          activeColorPrimary: AppColors.kLightPrimary,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          icon: const Icon(Icons.menu),
          title: ("Menu"),
          activeColorPrimary: AppColors.kLightPrimary,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontSize: 16),
          icon: const Icon(CupertinoIcons.profile_circled),
          title: ("Profile"),
          activeColorPrimary: AppColors.kLightPrimary,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    List<Widget> _buildScreens() {
      return [
        const HomeScreen(),
        const ChathomeScreen(),
        const BottomSheetExample(),
        MenuScreen(),
        const PersonalProfile()
      ];
    }

    // final brightness = MediaQuery.of(context).platformBrightness;
    // final isDarkMode = brightness == Brightness.dark;
    return PersistentTabView(context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.kBlack,
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0.0),
          // colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style16 // Choose the nav bar style with this property.
        );
  }
}

class Createpostbuttons extends StatelessWidget {
  const Createpostbuttons({
    super.key,
    required this.text,
    required this.icons,
  });

  final String text;
  final Icon icons;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      
      width: 350,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.kGrey, borderRadius: BorderRadius.circular(8)),
      duration: const Duration(milliseconds: 2),
      child: Row(
        children: [
          icons,
          AppSize.kWidth10,
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
