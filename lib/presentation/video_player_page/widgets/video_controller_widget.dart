import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signl/core/colors/colors.dart';
import 'package:video_player/video_player.dart';

class VideoControllerWidget extends StatefulWidget {
  const VideoControllerWidget({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  State<VideoControllerWidget> createState() => _VideoControllerWidgetState();
}

class _VideoControllerWidgetState extends State<VideoControllerWidget> {
  bool isMuted = false;
  bool screen = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        VideoProgressWidget(controller: widget.controller),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(
                  () {
                    if (screen) {
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                      ]);
                      screen = !screen;
                    } else {
                      SystemChrome.setPreferredOrientations(
                        [
                          DeviceOrientation.portraitUp,
                        ],
                      );
                      screen = !screen;
                    }
                  },
                );
              },
              icon: Icon(
                screen ? Icons.fullscreen : Icons.fullscreen_exit,
                color: colorWhite,
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_previous,
                        size: 30,
                        color: colorWhite,
                      )),
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          widget.controller.value.isPlaying
                              ? widget.controller.pause()
                              : widget.controller.play();
                        },
                      );
                    },
                    icon: Icon(
                      widget.controller.value.isPlaying
                          ? Icons.pause_circle_outline
                          : Icons.play_arrow_rounded,
                      size: 35,
                      color: colorWhite,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_next,
                        size: 30,
                        color: colorWhite,
                      )),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: colorWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class VideoProgressWidget extends StatefulWidget {
  const VideoProgressWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final VideoPlayerController controller;

  @override
  State<VideoProgressWidget> createState() => _VideoProgressWidgetState();
}

class _VideoProgressWidgetState extends State<VideoProgressWidget> {
  int second = 0;
  int minSecond = 59;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() => second = widget.controller.value.position.inSeconds);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      width: size.width,

      //color: colorPink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(widget.controller.value.position.inSeconds<10?
            "${widget.controller.value.duration.inHours}:"
            "${widget.controller.value.duration.inMinutes}:"
            "0$second":
              "${widget.controller.value.duration.inHours}:"
              "${widget.controller.value.position.inSeconds==60?widget.controller.value.duration.inMinutes:'0'}:"
              "${widget.controller.value.position.inSeconds!=60?second:'00'}",
            style: const TextStyle(color: colorWhite),
          ),
          Container(
            width: size.width*0.70,
            child: widget.controller.value.isInitialized
                ? VideoProgressIndicator(widget.controller,
                allowScrubbing: true,
            colors: VideoProgressColors(
              playedColor: colorWhite
            ),
            )
                : VideoProgressIndicator(
              widget.controller,
              allowScrubbing: false,
              colors: const VideoProgressColors(
                  playedColor: Colors.transparent),
            ),
          ),

          Text(widget.controller.value.duration.inSeconds!=60?
            "${widget.controller.value.duration.inHours}:"
            "${widget.controller.value.duration.inMinutes}:"
            "${widget.controller.value.duration.inSeconds}"
              :"${widget.controller.value.duration.inHours}:"
              "${widget.controller.value.duration.inMinutes}:"
              "00",


            style: const TextStyle(color: colorWhite),
          )
        ],
      ),
    );
  }
}
/*Expanded(
child: Container(
// margin: const EdgeInsets.only( right: 10,left: 10),
child: widget.controller.value.isInitialized
? VideoProgressIndicator(widget.controller,
allowScrubbing: true)
: VideoProgressIndicator(
widget.controller,
allowScrubbing: false,
colors: const VideoProgressColors(
playedColor: Colors.transparent),
),
),
),*/