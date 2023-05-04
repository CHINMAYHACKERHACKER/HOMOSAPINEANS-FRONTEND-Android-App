import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// class BotomNavigationBar extends StatefulWidget {
//   const BotomNavigationBar({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _BotomNavigationBarState();
//   }
// }

// class _BotomNavigationBarState extends State<BotomNavigationBar> {

//     List<Widget> _buildScreens() {
//         return [
//           HomeScreen(),
//           HomeScreen()
//         ];
//     }

//     List<PersistentBottomNavBarItem> _navBarsItems() {
//         return [
//             PersistentBottomNavBarItem(
//                 icon: Icon(CupertinoIcons.home),
//                 title: ("Home"),
//                 activeColorPrimary: CupertinoColors.activeBlue,
//                 inactiveColorPrimary: CupertinoColors.systemGrey,
//             ),
//             PersistentBottomNavBarItem(
//                 icon: Icon(CupertinoIcons.settings),
//                 title: ("Settings"),
//                 activeColorPrimary: CupertinoColors.activeBlue,
//                 inactiveColorPrimary: CupertinoColors.systemGrey,
//             ),
//         ];
//     }

//   @override
//   Widget build(BuildContext context) {
//     // final newTrip = Trip(null, null, null, null, null, null);
//     return Scaffold(
//       body: PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         resizeToAvoidBottomInset: true,
//         navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
//             ? 0.0
//             : kBottomNavigationBarHeight,
//         bottomScreenMargin: 0,
//         // onWillPop: (final context) async {
//         //   await showDialog(
//         //     context: context,
//         //     useSafeArea: true,
//         //     builder: (final context) => Container(
//         //       height: 50,
//         //       width: 50,
//         //       color: Colors.white,
//         //       child: ElevatedButton(
//         //         child: const Text("Close"),
//         //         onPressed: () {
//         //           Navigator.pop(context);
//         //         },
//         //       ),
//         //     ),
//         //   );
//         //   return false;
//         // },
//         selectedTabScreenContext: (final context) {
//           testContext = context;
//         },
//         backgroundColor: Colors.black,
//         hideNavigationBar: _hideNavBar,
//         decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
//         itemAnimationProperties: const ItemAnimationProperties(
//           duration: Duration(milliseconds: 400),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: const ScreenTransitionAnimation(
//           animateTabTransition: true,
//         ),
//         navBarStyle:
//             NavBarStyle.style16, // Choose the nav bar style with this property
//       ),
//     );
//   }

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }

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
          icon: Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen()
      ];
    }

    return PersistentTabView(context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        // backgroundColor: Colors.white, // Default is Colors.white.
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
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
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
