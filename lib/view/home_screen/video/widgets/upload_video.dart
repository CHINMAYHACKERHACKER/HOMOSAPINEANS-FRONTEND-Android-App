import 'dart:async';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class UploadVideo extends StatefulWidget {
  UploadVideo({Key? key}) : super(key: key);

  @override
  _UploadVideoState createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;
  File? videoFile;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Video'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                // height: double.infinity / 1,
                height: 550,
                child: videoFile != null
                    ? Center(
                        child: AspectRatio(
                          aspectRatio: _controller!.value.aspectRatio,
                          child: VideoPlayer(_controller!),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 500,
                        width: double.infinity,
                        color: Colors.black,
                        child: Icon(
                          Icons.video_collection_outlined,
                          size: 100,
                          color: Colors.grey,
                        ),
                      ),
              ),
              if (videoFile != null)
                Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPlaying = !_isPlaying;
                        if (_isPlaying) {
                          _controller!.play();
                        } else {
                          _controller!.pause();
                        }
                      });
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Icon(
                          _isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          (videoFile == null)
              ? ElevatedButton(
                  child: Text("Select Video"),
                  onPressed: () {
                    getVideo();
                  },
                )
              : ElevatedButton(
                  child: Text("Select Video"),
                  onPressed: () {
                    getVideo();
                  },
                ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.kDarkPrimary)),
                onPressed: () {
                  if (videoFile != null) {
                    // Implement your upload logic here
                    // ...
                  }
                },
                child: Text('Upload Video')),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //   onPressed: () {
          //     setState(() {
          //       _isPlaying = !_isPlaying;
          //       if (_isPlaying) {
          //         _controller!.play();
          //       } else {
          //         _controller!.pause();
          //       }
          //     });
          //   },
          //   child: Icon(
          //     _isPlaying ? Icons.pause : Icons.play_arrow,
          //   ),
          // ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Future<void> getVideo() async {
    final XFile? pickedFile = await ImagePicker().pickVideo(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      final File file = File(pickedFile.path);
      setState(() {
        videoFile = file;
        _controller = VideoPlayerController.file(videoFile!);
        _initializeVideoPlayerFuture = _controller!.initialize().then((_) {
          _controller!.setLooping(true);
          _controller!.play();
        });
      });
    }
  }
}
