import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/runnig_pictures/widget/video_player.dart';

class RunningPictures extends StatelessWidget {
  const RunningPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RunningPictures'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Row(
                children: [
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //       'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-new-photo-gallery-006.jpeg'),
                  // ),
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
              const Row(
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
                      label: const Column(
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
                      label: const Column(
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
