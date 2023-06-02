import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isMuted = false;
  bool _showHoverButtons = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..addListener(() {
        setState(() {});
      })
      ..initialize().then((_) {
        setState(() {});
      })
      ..setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
      _isPlaying ? _controller.play() : _controller.pause();
    });
  }

  void _toggleMuteUnmute() {
    setState(() {
      _isMuted = !_isMuted;
      _isMuted ? _controller.setVolume(0.0) : _controller.setVolume(1.0);
    });
  }

  void _seekForward() {
    final currentPosition = _controller.value.position;
    final duration = _controller.value.duration;

    final newPosition = currentPosition + const Duration(seconds: 10);
    if (newPosition < duration) {
      _controller.seekTo(newPosition);
    }
  }

  void _seekBackward() {
    final currentPosition = _controller.value.position;

    final newPosition = currentPosition - const Duration(seconds: 10);
    if (newPosition > Duration.zero) {
      _controller.seekTo(newPosition);
    }
  }

  void _onSliderValueChanged(double value) {
    setState(() {
      final newPosition = _controller.value.duration * value;
      _controller.seekTo(newPosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    final position = _controller.value.position;
    final duration = _controller.value.duration;
    final isVideoInitialized = _controller.value.isInitialized;

    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  VideoPlayer(_controller),
                  if (!isVideoInitialized) const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          if (isVideoInitialized)
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_showHoverButtons && isVideoInitialized)
                      IconButton(
                        icon: Icon(
                          _isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                        onPressed: _togglePlayPause,
                      ),
                    IconButton(
                      icon: Icon(
                        _isMuted ? Icons.volume_off : Icons.volume_up,
                        color: Colors.white,
                      ),
                      onPressed: _toggleMuteUnmute,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.replay_10,
                        color: Colors.white,
                      ),
                      onPressed: _seekBackward,
                    ),
                    if (position < duration)
                      Slider(
                        activeColor: const Color.fromARGB(255, 235, 0, 0),
                        inactiveColor: Colors.white.withOpacity(0.5),
                        value: position.inSeconds.toDouble(),
                        min: 0.0,
                        max: duration.inSeconds.toDouble(),
                        onChanged: (value) {
                          _onSliderValueChanged(value);
                        },
                      ),
                    IconButton(
                      icon: const Icon(
                        Icons.forward_10,
                        color: Colors.white,
                      ),
                      onPressed: _seekForward,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
