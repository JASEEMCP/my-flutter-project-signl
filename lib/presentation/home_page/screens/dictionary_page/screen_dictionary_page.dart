import 'package:flutter/material.dart';
import 'package:signl/core/text_style/text_style.dart';
import 'package:signl/presentation/widgets/session_widget.dart';

import '../../../../core/colors/colors.dart';


class ScreenDictionarySession extends StatelessWidget{
  const ScreenDictionarySession({super.key});

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
                  child: Text('Dictionary',style: blackText24,),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            SessionWidget(sessionImage: "assets/session_images/sign.png", sessionTitle: "Fingerspelling", sessionIndex: 3),
            const SizedBox(height: 30,),
            SessionWidget(sessionImage: "assets/session_images/vocabulary.png", sessionTitle: "Words", sessionIndex: 4)
          ],
        ),
      ),
      

    );
  }


}