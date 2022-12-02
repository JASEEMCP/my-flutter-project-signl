import 'package:flutter/material.dart';

import '../../../../../../core/colors/colors.dart';
import '../../../../../../core/text_style/text_style.dart';
import '../../../widgets/grid_view_widget.dart';


class ScreenWordsSession extends StatelessWidget {
  const ScreenWordsSession({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(

      //AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: size.width * 0.20,
        backgroundColor: colorPink,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
              suffixIcon:  IconButton(
                  onPressed: (){},
                  splashRadius: 19,
                  icon: Icon(Icons.sort,color: colorGrey800,),
              ),
              border: InputBorder.none,
              hintText: "Search Word",

            ),
          ),
        ),
      ),




      body:Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 24, top: 10),
            child: Text(
              "Words",
              style: blackText24,
            ),
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
              itemBuilder: (ctx,index)=>GridViewWidget(size: size)
          ),
        ),
      ),
    ],
    ),
    );
  }
}