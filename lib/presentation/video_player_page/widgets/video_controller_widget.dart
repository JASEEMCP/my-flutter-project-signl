import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoControllerWidget extends StatefulWidget {
  const VideoControllerWidget({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  State<VideoControllerWidget> createState() => _VideoControllerWidgetState();
}

class _VideoControllerWidgetState extends State<VideoControllerWidget> {
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only( right: 100),
          height: 10,
          child: widget.controller.value.isInitialized
              ? Row(
            crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: VideoProgressIndicator(widget.controller, allowScrubbing: true)),
                  Expanded(child: Text(widget.controller.value.duration.toString()))
                ],
              )
              : null,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.slow_motion_video),),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 30,)),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.controller.value.isPlaying
                            ? widget.controller.pause()
                            : widget.controller.play();
                      },);
                    },
                    icon: Icon(
                      widget.controller.value.isPlaying
                          ? Icons.pause_circle_outline
                          : Icons.play_arrow_rounded,size: 35,
                    ),

                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 30,)),
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen))
          ],
        ),
      ],
    );
  }
}

