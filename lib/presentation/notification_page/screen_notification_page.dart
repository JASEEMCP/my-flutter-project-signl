import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/text_style/text_style.dart';

class ScreenNotification extends StatelessWidget{
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: size.width*0.20,
          automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: colorPink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){},
              splashRadius: 19,
                icon:const Icon(Icons.filter_list_alt,size: 30,),
            ),
          ],
        ),
        ),
      body: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10,top: 9),
                child: Text("Notification Center",style: blackText24,),
              ),
            ],
          ),
        ],
      ),
    );
  }

}