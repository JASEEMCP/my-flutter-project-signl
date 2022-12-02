import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/text_style/text_style.dart';
import '../../../widgets/session_widget.dart';
import '../widgets/grid_view_widget.dart';


class ScreenPracticeSession extends StatelessWidget{
  const ScreenPracticeSession({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: size.width*0.20,
        backgroundColor: colorPink,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      //Body

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40.0,top: 20),
                  child: Text('Practice',style: blackText24,),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            SessionWidget(sessionImage: "assets/session_images/spell.png", sessionTitle: "Spell Bee", sessionIndex: 5),
          ],
        ),
      ),




    );
  }


}