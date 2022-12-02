import 'package:flutter/material.dart';
import 'package:signl/core/colors/colors.dart';
import 'package:signl/presentation/main_page/main_page.dart';
import 'package:signl/presentation/signing_page/login_page/screen_login_page.dart';
import 'package:signl/presentation/signing_page/sign_up_page/screen_sign_up_page.dart';
import 'package:signl/presentation/signing_page/splash_screen_pages/introduction_page.dart';
import 'package:signl/presentation/video_player_page/video_player_screen.dart';
import 'package:signl/presentation/video_player_page/widgets/video_controller_widget.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: colorOffWhite
      ),
      home: const VideoPlayerScreen(),
    );
  }
}

