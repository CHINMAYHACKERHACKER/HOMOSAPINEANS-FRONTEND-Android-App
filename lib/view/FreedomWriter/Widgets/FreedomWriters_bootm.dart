import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homo_sapiens/view/FreedomWriter/writer.dart';
import 'package:homo_sapiens/view/home_screen/carousal.dart';
import 'package:homo_sapiens/view/home_screen/video/widgets/create_shoot.dart';

import '../../../utils/styles/sizedbox.dart';
import '../../../widgets/text_widget.dart';
import '../../AmazingReviews/Amazingeviews.dart';
import '../../home_screen/bottom_navbar.dart';
import '../../home_screen/music/music_screen.dart';
import '../../home_screen/video/shoot_share.dart';
import '../../home_screen/video/widgets/upload_video.dart';
import '../../personal_profile/personal_profile.dart';
import '../AddCoverPage.dart';
import '../Amazing100.dart';
import '../Freedom_Writers.dart';

class FreedomBottomNavi extends StatefulWidget {
  const FreedomBottomNavi({super.key});

  @override
  State<FreedomBottomNavi> createState() => _FreedomBottomNaviState();
}

class _FreedomBottomNaviState extends State<FreedomBottomNavi> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    FreedomWritersScreen(),
    Amazing100(), //Amaing 100 Screen Should Be Repppaced
    // Camerarecod(),
    AddCoverPage(),
    MenuScreen(),
    PersonalProfile(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 15,
        selectedFontSize: 15,
        selectedItemColor: Color.fromARGB(137, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(137, 255, 255, 255),
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                child: Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                child: Icon(Icons.book)),
            label: 'Amazing 100 ',
          ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                child: Icon(Icons.edit)),
            label: 'Write',
          ),
          // BottomNavigationBarItem(
          //   icon: InkWell(
          //     onTap: () {
          //       showModalBottomSheet<void>(
          //         shape: const RoundedRectangleBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(9))),
          //         context: context,
          //         builder: (BuildContext context) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: SizedBox(
          //               height: 250,
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: <Widget>[
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       AppSize.kWidth30,
          //                       const TextWidget(
          //                         name: 'Post',
          //                         fontSize: 25,
          //                       ),
          //                       const Spacer(),
          //                       IconButton(
          //                         onPressed: () => Navigator.pop(context),
          //                         icon: const Icon(Icons.close),
          //                       ),
          //                       AppSize.kWidth20,
          //                     ],
          //                   ),
          //                   InkWell(
          //                     onTap: () {
          //                       Navigator.push(
          //                           context,
          //                           MaterialPageRoute(
          //                               builder: (context) => CreateShoot(
          //                                     wigetse: UploadVideo(),
          //                                   )));
          //                     },
          //                     child: const Createpostbuttons(
          //                       icons: Icon(Icons.movie_filter_outlined),
          //                       text: 'Upload Video',
          //                     ),
          //                   ),
          //                   // const Spacer(),

          //                   // const Createpostbuttons(
          //                   //   icons: Icon(Icons.play_circle_outline_rounded),
          //                   //   text:
          //                   //'Whats New!',
          //                   // ),

          //                   InkWell(
          //                     onTap: () {
          //                       Navigator.push(
          //                           context,
          //                           MaterialPageRoute(
          //                             builder: (context) => MusicScreen(),
          //                           ));
          //                     },
          //                     child: const Createpostbuttons(
          //                       icons: Icon(Icons.slow_motion_video_rounded),
          //                       text: 'Create Shoot and Share',
          //                     ),
          //                   ),
          //                   const Createpostbuttons(
          //                     icons: Icon(Icons.music_note),
          //                     text: 'Add Music',
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //       );
          //     },
          //     child: Container(
          //         padding: EdgeInsets.all(5),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(100),
          //             border: Border.all(
          //                 width: 3, color: Color.fromARGB(73, 255, 255, 255))),
          //         child: Icon(Icons.post_add_rounded)),
          //   ),
          //   label: 'Post',
          // ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                child: Icon(Icons.menu)),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                child: Icon(Icons.person)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
