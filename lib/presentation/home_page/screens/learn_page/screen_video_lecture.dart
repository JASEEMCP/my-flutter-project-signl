import 'package:flutter/material.dart';
import 'package:signl/presentation/home_page/screens/learn_page/widgets/video_lecture_widget.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/text_style/text_style.dart';


class ScreenLearnSession extends StatelessWidget{
  const ScreenLearnSession({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.width*0.20,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios,size: 20,),
        ),
        elevation: 0,
        backgroundColor: colorPink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){},
              splashRadius: 19,
              icon:const Icon(Icons.update,size: 30,),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 24,top: 10),
                child: Text("Video Lectures",style: blackText24,),
              ),
            ],
          ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: GridView.builder(
                  shrinkWrap: true,

                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: size.width/size.width,
                   mainAxisSpacing: 30,
                   crossAxisSpacing: 30,

                 ),
                 itemBuilder: (ctx,index)=>VideoLectureWidget(size: size)
             ),
           ),
         ),
        


        ],
      ),
    );
  }
}

