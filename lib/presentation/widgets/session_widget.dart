import 'package:flutter/material.dart';
import 'package:signl/presentation/home_page/screens/dictionary_page/screen_dictionary_page.dart';
import 'package:signl/presentation/home_page/screens/learn_page/screen_video_lecture.dart';
import 'package:signl/presentation/home_page/screens/practice_page/screen_practice_page.dart';

import '../../core/colors/colors.dart';
import '../home_page/screens/dictionary_page/screens/finger_spelling_page/screen_fingerspelling.dart';
import '../home_page/screens/dictionary_page/screens/words_page/screen_words.dart';
import '../home_page/screens/practice_page/screens/screen_practice_page.dart';

class SessionWidget extends StatelessWidget {
  final String sessionImage;
  final String sessionTitle;
  final int sessionIndex;
 SessionWidget({
Key? key,required this.sessionImage,required this.sessionTitle, required this.sessionIndex
}) : super(key: key);
List sessionPageList = <Widget>[
  const ScreenLearnSession(),
  const ScreenDictionarySession(),
  const ScreenPracticeSession(),
  const ScreenFingerspellingSession(),
  const ScreenWordsSession(),
  const ScreenPracticePage()
];
@override
Widget build(BuildContext context) {
  return Container(
        decoration: BoxDecoration(
        color: colorPink11,
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(25)
    ),
    child: Material(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        highlightColor: colorPink,
        splashColor: colorPink,
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=> sessionPageList[sessionIndex]));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.width*0.30,
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(
                    margin: const EdgeInsets.only(left: 25),
                    height: 34,
                    width: 50,
                    child:  Image.asset(sessionImage),
                  ),
                ),
                const SizedBox(width: 9,),
                Expanded(child:
                Text(sessionTitle,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
        ),
      ),

    ),
  );
}
}