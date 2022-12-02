import 'package:flutter/material.dart';
import 'package:signl/core/size/size.dart';
import 'package:signl/presentation/video_player_page/widgets/video_controller_widget.dart';
import 'package:video_player/video_player.dart';

import '../../../core/colors/colors.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreen();
}

class _VideoPlayerScreen extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.network('https://www.fluttercampus.com/video.mp4')
          ..addListener(() => setState(() {}))
          ..setLooping(false)
          ..initialize().then((value) => _controller.play());
  }

  bool isMuted = true;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 6)
              ),
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const CircularProgressIndicator(
                      color: colorWhite,
                    ),
            ),


          ],

        ),

      ),
      floatingActionButton: VideoControllerWidget(controller: _controller),
      //backgroundColor: colorBlack,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
