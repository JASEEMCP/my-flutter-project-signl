import 'package:flutter/material.dart';
import 'package:signl/presentation/home_page/screens/widgets/grid_view_widget.dart';

import '../../../../../../core/colors/colors.dart';
import '../../../../../../core/text_style/text_style.dart';

class ScreenFingerspellingSession extends StatelessWidget {
  const ScreenFingerspellingSession({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: size.width * 0.20,
        backgroundColor: colorPink,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              splashRadius: 19,
              icon: const Icon(
                Icons.filter_list_sharp,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 24, top: 10),
              child: Text(
                "Finger Spelling",
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
