import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homo_sapiens/view/home_screen/video/widgets/create_video.dart';

import '../video/widgets/create_shoot.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CreateShoot(
                      wigetse: CameraPage(),
                    )));
      }),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text('Music -Kolik'),
              leading: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.music_note),
              )),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
            ),
            Divider()
          ],
        );
      }),
    );
  }
}
