import 'package:flutter/material.dart';
import 'package:signl/presentation/video_player_page/widgets/video_controller_widget.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/text_style/text_style.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colorPink11,),
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
                top: 126,
                left: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Name",style: blackText,)
                  ],
                ),
              ),

            ],
          )
      );
  }
}
