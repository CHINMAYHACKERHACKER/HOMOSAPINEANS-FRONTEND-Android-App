import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/carousal.dart';
import 'package:homo_sapiens/view/runnig_pictures/widget/video_player.dart';

import '../../widgets/text_widget.dart';
import '../home_screen/bottom_navbar.dart';
import '../home_screen/music/music_screen.dart';
import '../home_screen/video/shoot_share.dart';
import '../home_screen/video/widgets/create_shoot.dart';
import '../home_screen/video/widgets/upload_video.dart';
import '../personal_profile/personal_profile.dart';

class RunningPictures extends StatelessWidget {
  const RunningPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RunningPictures'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-new-photo-gallery-006.jpeg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Nayanthara',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const VideoPlayerWidget(
                videoUrl:
                    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
              ),
              const SizedBox(height: 10),
              const Text(
                'Title: Download Sample Mp4 Video clips for testing your application then you have come to the right place.',
                maxLines: 2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('20k Views |'),
                  Text('12.10.2022, 10 pm'),
                ],
              ),
              AppSize.kHeight10,
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up_alt,
                        size: 12,
                      ),
                      label: Column(
                        children: [
                          Text(
                            '12.5k',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'thumbs up',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_down,
                        size: 12,
                      ),
                      label: Column(
                        children: [
                          Text(
                            '12.5k',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'thumbs up',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kWidth10,
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_rounded,
                        size: 15,
                      ),
                    ),
                  ),
                  AppSize.kWidth10,
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ))),
                  AppSize.kWidth10,
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.file_download_outlined,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                height: 2,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}

class RunningLiveVedioPage extends StatefulWidget {
  const RunningLiveVedioPage({super.key});

  @override
  State<RunningLiveVedioPage> createState() => _RunningLiveVedioPageState();
}

class _RunningLiveVedioPageState extends State<RunningLiveVedioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Running Vedios'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-new-photo-gallery-006.jpeg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Nayanthara',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const VideoPlayerWidget(
                videoUrl:
                    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
              ),
              const SizedBox(height: 10),
              const Text(
                'Title: Download Sample Mp4 Video clips for testing your application then you have come to the right place.',
                maxLines: 2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('20k Views |'),
                  Text('12.10.2022, 10 pm'),
                ],
              ),
              AppSize.kHeight10,
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up_alt,
                        size: 12,
                      ),
                      label: Column(
                        children: [
                          Text(
                            '12.5k',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'thumbs up',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_down,
                        size: 12,
                      ),
                      label: Column(
                        children: [
                          Text(
                            '12.5k',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'thumbs up',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSize.kWidth10,
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_rounded,
                        size: 15,
                      ),
                    ),
                  ),
                  AppSize.kWidth10,
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ))),
                  AppSize.kWidth10,
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.file_download_outlined,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                height: 2,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}

class RunningPicBottomBar extends StatefulWidget {
  const RunningPicBottomBar({super.key});

  @override
  State<RunningPicBottomBar> createState() => _RunningPicBottomBarState();
}

class _RunningPicBottomBarState extends State<RunningPicBottomBar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    RunningPictures(),
    RunningLiveVedioPage(),
    // Camerarecod(),
    Spacer(),
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
                child: Icon(Icons.broadcast_on_home)),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
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
                                  name: 'Post',
                                  fontSize: 25,
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(Icons.close),
                                ),
                                AppSize.kWidth20,
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateShoot(
                                              wigetse: UploadVideo(),
                                            )));
                              },
                              child: const Createpostbuttons(
                                icons: Icon(Icons.movie_filter_outlined),
                                text: 'Upload Video',
                              ),
                            ),
                            // const Spacer(),

                            // const Createpostbuttons(
                            //   icons: Icon(Icons.play_circle_outline_rounded),
                            //   text:
                            //'Whats New!',
                            // ),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MusicScreen(),
                                    ));
                              },
                              child: const Createpostbuttons(
                                icons: Icon(Icons.slow_motion_video_rounded),
                                text: 'Create Post',
                              ),
                            ),
                            const Createpostbuttons(
                              icons: Icon(Icons.music_note),
                              text: 'Go Live',
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 3, color: Color.fromARGB(73, 255, 255, 255))),
                  child: Icon(Icons.post_add_rounded)),
            ),
            label: 'Post',
          ),
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
