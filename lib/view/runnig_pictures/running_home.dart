import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class RunningPictures extends StatelessWidget {
  const RunningPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RunningPictures'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: const [
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
              SizedBox(height: 20),
              VideoPlayerScreen(),
              SizedBox(height: 10),
              Text(
                'Title: Download Sample Mp4 Video clips for testing your application then you have come to the right place.',
                maxLines: 2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                  Text('20k Views |'),
                  Text('12.10.2022, 10 pm'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_up_alt,
                        size: 12,
                      ),
                      label: Column(
                        children: const [
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
                  SizedBox(width: 10),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_down,
                        size: 12,
                      ),
                      label: Column(
                        children: const [
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
                      icon: Icon(
                        Icons.messenger_outline_rounded,
                        size: 15,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.file_download_outlined),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                height: 2,
                color: Colors.white,
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}

// class VideoPlayerWidget extends StatefulWidget {
//   final String videoUrl;

//   const VideoPlayerWidget({required this.videoUrl});

//   @override
//   _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late VideoPlayerController _controller;
//   bool _isPlaying = false;
//   bool _isMuted = false;
//   double _currentSliderValue = 0.0;
//   bool _showHoverButtons = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(widget.videoUrl)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..initialize().then((_) {
//         setState(() {});
//       })
//       ..setLooping(true);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _togglePlayPause() {
//     setState(() {
//       _isPlaying ? _controller.pause() : _controller.play();
//       _isPlaying = !_isPlaying;
//     });
//   }

//   void _toggleMuteUnmute() {
//     setState(() {
//       _isMuted ? _controller.setVolume(1.0) : _controller.setVolume(0.0);
//       _isMuted = !_isMuted;
//     });
//   }

//   void _seekForward() {
//     final currentPosition = _controller.value.position;
//     final duration = _controller.value.duration;

//     final newPosition = currentPosition + Duration(seconds: 10);
//     if (newPosition < duration) {
//       _controller.seekTo(newPosition);
//     }
//   }

//   void _seekBackward() {
//     final currentPosition = _controller.value.position;

//     final newPosition = currentPosition - Duration(seconds: 10);
//     if (newPosition > Duration.zero) {
//       _controller.seekTo(newPosition);
//     }
//   }

//   void _onSliderValueChanged(double value) {
//     setState(() {
//       _currentSliderValue = value;
//       final newPosition = _controller.value.duration * value;
//       _controller.seekTo(newPosition);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final position = _controller.value.position;
//     final duration = _controller.value.duration;
//     final isVideoInitialized = _controller.value.isInitialized;

//     return InkWell(
//       onTap: _togglePlayPause,
//       onHover: (isHovered) {
//         setState(() {
//           _showHoverButtons = isHovered;
//         });
//         if (isHovered) {
//           _controller.setVolume(1.0);
//         } else {
//           _controller.setVolume(_isMuted ? 0.0 : 1.0);
//         }
//       },
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10.0),
//             child: AspectRatio(
//               aspectRatio: _controller.value.aspectRatio,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   VideoPlayer(_controller),
//                   if (!isVideoInitialized) CircularProgressIndicator(),
//                   if (!isVideoInitialized || _showHoverButtons)
//                     IconButton(
//                       icon: Icon(
//                         _isPlaying ? Icons.pause : Icons.play_arrow,
//                         color: Colors.white,
//                       ),
//                       onPressed: _togglePlayPause,
//                     ),
//                 ],
//               ),
//             ),
//           ),
//           if (_showHoverButtons)
//             Positioned(
//               bottom: 0.0,
//               left: 0.0,
//               right: 0.0,
//               child: Container(
//                 color: Colors.black54,
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       icon: Icon(
//                         _isMuted ? Icons.volume_off : Icons.volume_up,
//                         color: Colors.white,
//                       ),
//                       onPressed: _toggleMuteUnmute,
//                     ),
//                     IconButton(
//                       icon: Icon(
//                         Icons.replay_10,
//                         color: Colors.white,
//                       ),
//                       onPressed: _seekBackward,
//                     ),
//                     if (position < duration)
//                       Slider(
//                         activeColor: Color.fromARGB(255, 235, 0, 0),
//                         inactiveColor: Colors.white.withOpacity(0.5),
//                         value: position.inSeconds.toDouble(),
//                         min: 0.0,
//                         max: duration.inSeconds.toDouble(),
//                         onChanged: (value) {
//                           _onSliderValueChanged(value);
//                         },
//                       ),
//                     IconButton(
//                       icon: Icon(
//                         Icons.forward_10,
//                         color: Colors.white,
//                       ),
//                       onPressed: _seekForward,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

class VideoThumbnail extends StatefulWidget {
  final String videoUrl;
  // final String thumbnailUrl;
  final String videoTitle;
  final String channelName;
  final String duration;
  final int viewCount;

  VideoThumbnail({
    required this.videoUrl,
    // required this.thumbnailUrl,
    required this.videoTitle,
    required this.channelName,
    required this.duration,
    required this.viewCount,
  });

  @override
  _VideoThumbnailState createState() => _VideoThumbnailState();
}

class _VideoThumbnailState extends State<VideoThumbnail> {
  late VideoPlayerController _videoController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network(widget.videoUrl);
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: false,
      looping: false,
      showControls: false,
      allowFullScreen: true,
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(color: Colors.amber
                // image: DecorationImage(
                //   // image: NetworkImage(widget.thumbnailUrl),
                //   fit: BoxFit.cover,
                // ),
                ),
            child: Stack(
              children: [
                Chewie(
                  controller: _chewieController,
                ),
                Center(
                  child: IconButton(
                    icon: Icon(
                      _videoController.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 48,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        if (_videoController.value.isPlaying) {
                          _videoController.pause();
                        } else {
                          _videoController.play();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          widget.videoTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          widget.channelName,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Icon(
              Icons.access_time,
              size: 14,
              color: Colors.grey,
            ),
            SizedBox(width: 4),
            Text(
              widget.duration,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.remove_red_eye,
              size: 14,
              color: Colors.grey,
            ),
            SizedBox(width: 4),
            Text(
              widget.viewCount.toString(),
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 8),
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text('Add to playlist'),
              value: 'add_to_playlist',
            ),
            PopupMenuItem(
              child: Text('Save for later'),
              value: 'save_for_later',
            ),
            PopupMenuItem(
              child: Text('Share'),
              value: 'share',
            ),
          ],
          onSelected: (value) {
            // Handle selected option here
          },
        ),
      ],
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          VideoThumbnail(
            videoUrl:
                'https://www.appsloveworld.com/wp-content/uploads/2018/10/640.mp4',
            // thumbnailUrl: 'https://example.com/thumbnail1.jpg',
            videoTitle: 'Video 1',
            channelName: 'Channel A',
            duration: '10:30',
            viewCount: 1000,
          ),
          VideoThumbnail(
            videoUrl:
                'https://www.appsloveworld.com/wp-content/uploads/2018/10/640.mp4',
            // thumbnailUrl: 'https://example.com/thumbnail2.jpg',
            videoTitle: 'Video 2',
            channelName: 'Channel B',
            duration: '5:45',
            viewCount: 500,
          ),
          // Add more VideoThumbnail widgets as needed
        ],
      ),
    );
  }
}
