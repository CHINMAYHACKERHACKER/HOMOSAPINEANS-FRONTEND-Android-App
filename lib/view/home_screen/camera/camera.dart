import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Camerarecod extends StatefulWidget {
  const Camerarecod({super.key});

  @override
  State<Camerarecod> createState() => _CamerarecodState();
}

class _CamerarecodState extends State<Camerarecod> {
  CameraController? _controller;
  List<CameraDescription> _cameras = [];
  bool _isRecording = false;
  AudioPlayer _audioPlayer = AudioPlayer();
  Timer? _timer;
  int _timerDuration = 0;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  void initializeCamera() async {
    // Request camera permission
    if (await Permission.camera.request().isGranted) {
      // Fetch available cameras
      _cameras = await availableCameras();

      // Initialize the camera controller
      _controller = CameraController(_cameras[0], ResolutionPreset.medium);

      // Initialize the camera controller and wait for it to be initialized
      await _controller!.initialize();

      // Update the UI after the camera is initialized
      if (mounted) {
        setState(() {});
      }
    } else {
      // Handle camera permission denied
      print('Camera permission denied');
    }
  }

  void startRecording() async {
    if (_controller != null && _controller!.value.isInitialized) {
      final Directory appDirectory = await getTemporaryDirectory();
      final String videoDirectory = '${appDirectory.path}/Videos';
      await Directory(videoDirectory).create(recursive: true);

      final String currentTime =
          DateTime.now().millisecondsSinceEpoch.toString();
      final String filePath = '$videoDirectory/$currentTime.mp4';

      try {
        await _controller!.startVideoRecording();
        // _audioPlayer.play('path_to_music_file.mp3',

        //     ); // Play music
        setState(() {
          _isRecording = true;
          startTimer();
        });
      } catch (e) {
        // Handle recording start failure
        print('Failed to start recording: $e');
      }
    }
  }

  void stopRecording() async {
    if (_controller != null && _controller!.value.isRecordingVideo) {
      try {
        final XFile video = await _controller!.stopVideoRecording();
        _audioPlayer.stop(); // Stop playing music
        setState(() {
          _isRecording = false;
          stopTimer();
        });
      } catch (e) {
        // Handle recording stop failure
        print('Failed to stop recording: $e');
      }
    }
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        _timerDuration++;
      });
    });
  }

  void stopTimer() {
    _timer?.cancel();
    _timerDuration = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 800,
          child: Stack(
            children: [
              _controller != null && _controller!.value.isInitialized
                  ? CameraPreview(_controller!)
                  : Center(child: CircularProgressIndicator()),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Text(
                  '$_timerDuration',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0,
                right: 16.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: IconButton(
                        icon: Icon(Icons.fiber_manual_record, size: 30),
                        onPressed:
                            _isRecording ? stopRecording : startRecording,
                        color: _isRecording ? Colors.red : null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    _audioPlayer.stop();
    _timer?.cancel();
    super.dispose();
  }
}
