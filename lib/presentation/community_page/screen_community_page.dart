import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';


class ScreenCommunity extends StatelessWidget {
  const ScreenCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorOffWhite,

      //AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
          toolbarHeight: size.width*0.20,
          elevation: 0,
          backgroundColor: colorPink,
          centerTitle: true,
          title:Container(
            height: 40,
            width: MediaQuery.of(context).size.width*0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorWhite,
            ),
            child: TextField(
              cursorColor: colorGrey800,
              style: TextStyle(color : colorGrey800,fontSize: 17,fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 25,color: colorGrey800,),
               // contentPadding: const EdgeInsets.only(bottom: 17),
                border: InputBorder.none,
                hintText: "Search",

              ),
            ),
          ),
      ),
      //Body

      //FloatingAction Button

      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        backgroundColor: colorPink,
        child: const Icon(Icons.add),
      ),
    );
  }
}