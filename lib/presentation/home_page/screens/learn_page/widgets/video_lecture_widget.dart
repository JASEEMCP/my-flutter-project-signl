import 'package:flutter/material.dart';
import 'package:signl/presentation/video_player_page/video_player_screen.dart';

import '../../../../../core/colors/colors.dart';
import '../../../../../core/text_style/text_style.dart';
import '../../../../video_player_page/widgets/video_controller_widget.dart';




class VideoLectureWidget extends StatelessWidget {
  const VideoLectureWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const VideoPlayerScreen()));
          },

        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colorPink11,
            ),
            child: Stack(
              children: [

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 50),
                    height: size.width,
                    width: size.width*0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 10,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: colorWhite
                        ),
                        child: const Icon(Icons.person,size: 14,),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Name",style: blackText12,)
                    ],
                  ),
                ),

              ],
            )
        ),
      );
  }
}