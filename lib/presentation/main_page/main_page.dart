import 'package:flutter/material.dart';
import 'package:signl/presentation/community_page/screen_community_page.dart';
import 'package:signl/presentation/home_page/screens/dictionary_page/screen_dictionary_page.dart';
import 'package:signl/presentation/home_page/screens/learn_page/screen_video_lecture.dart';
import 'package:signl/presentation/main_page/widget/bottom_nav.dart';
import 'package:signl/presentation/notification_page/screen_notification_page.dart';
import 'package:signl/presentation/profile_page/screen_profile_page.dart';
import 'package:signl/presentation/signing_page/login_page/screen_login_page.dart';

import '../../core/colors/colors.dart';
import '../home_page/screen_home_page.dart';


class ScreenMainPage extends StatelessWidget {


  final List listPages = <Widget>[
    ScreenHome(),
    ScreenCommunity(),
    ScreenNotification(),
    ScreenProfile(),
  ];

  ScreenMainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedItemIndex,
      builder: (context,int pageIndex,ctx) {
        Size size =MediaQuery.of(context).size;
        return Scaffold(
          backgroundColor: colorOffWhite,
          body: listPages[pageIndex],

          //Bottom NavigationBar
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(right: 8,left: 8),
            child: Container(
              height: size.width*0.22,
              width: double.infinity,
              decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20,),
                    topLeft: Radius.circular(20),
                  ),
                  color: colorPink,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child: bottomNavBarItem(context,"assets/icon_images/Home.png", 25,0)),
                  Expanded(child: bottomNavBarItem(context,"assets/icon_images/group.png",27,1)),
                  Expanded(child: bottomNavBarItem(context,"assets/icon_images/notification.png",30,2)),
                  Expanded(child: bottomNavBarItem(context,"assets/icon_images/user.png",23,3)),

                ],
              ),
            ),
          ),
        );
      }
    );
  }
}