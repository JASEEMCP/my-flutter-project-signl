import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';
import '../widgets/session_widget.dart';

class ScreenHome extends StatelessWidget{
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: size.width*0.20,
        elevation: 0,
        backgroundColor: colorPink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Icon(Icons.sign_language_rounded,size: 30,),
                SizedBox(width: 10,),
                Text("SIGNL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: colorWhite,width: 1.5),
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.person,size: 20,),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose your Session",style: TextStyle(fontSize:19,color: Colors.pink.shade300,fontWeight: FontWeight.w700),),
              const SizedBox(height: 15,),
               SessionWidget(sessionImage: "assets/session_images/book.png",sessionTitle: "Learn",sessionIndex: 0,),
              const SizedBox(height: 15,),
               SessionWidget(sessionImage: "assets/session_images/dictionary.png", sessionTitle: "Dictionary",sessionIndex: 1,),
              const SizedBox(height: 15,),
               SessionWidget(sessionImage: "assets/session_images/target.png", sessionTitle: "Practice",sessionIndex: 2,)
            ],
          ),
        ),
      ),
    );
  }

}
