import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    _controller = VideoPlayerController.network(
        'https://static.videezy.com/system/resources/previews/000/053/947/original/4k-abstract-digital-text-minute-red-sample-fx-background-clip.mp4 ')
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize().then((value) => _controller.play());
  }

  bool isMuted = true;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    bool orientation =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            orientation
                ? Center(
                    child: videoPlayMenu(),
                  )
                : Expanded(child: videoPlayMenu()),
          ],
        ),
      ),
      floatingActionButton: Visibility(
          visible: isVisible,
          child: VideoControllerWidget(controller: _controller),
      ),
      backgroundColor: colorBlack,
    );
  }

  GestureDetector videoPlayMenu() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isVisible = !isVisible;
        },
        );
      },
      child: Container(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: colorWhite,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
