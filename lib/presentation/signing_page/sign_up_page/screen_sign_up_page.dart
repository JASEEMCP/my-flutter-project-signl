import 'package:flutter/material.dart';
import 'package:signl/presentation/home_page/screen_home_page.dart';
import 'package:signl/presentation/main_page/main_page.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/size.dart';
import '../../../core/text_style/text_style.dart';
import '../../widgets/text_field_decoration_widget.dart';
import '../login_page/screen_login_page.dart';



class ScreenSignupPage extends StatelessWidget {
  const ScreenSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: colorOffWhite,
      // Body
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.width * 0.2,
                margin: const EdgeInsets.only(right: 20),
                color: colorOffWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline_rounded, color: colorBlack, size: 30,),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                color: colorTransperent,
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 30.0),
                          child: Text("Register :", style: blackText30,),
                        )
                      ],
                    ),
                    TextField(
                      style: blackTextC30,
                      cursorColor: colorGrey800,
                      decoration: inputDecorationWidget('Surname'),
                    ),
                    size30,
                    TextField(
                      style: blackTextC30,
                      cursorColor: colorGrey800,
                      decoration: inputDecorationWidget('Last name'),
                    ),
                    size30,
                    TextField(
                      style: blackTextC30,
                      cursorColor: colorGrey800,
                      decoration: inputDecorationWidget('E-mail'),
                    ),
                    size30,
                    TextField(
                      style: blackTextC30,
                      cursorColor: colorGrey800,
                      decoration: inputDecorationWidget('Password'),
                    ),

                  ],
                ),
              ),
              SizedBox(
                width: size.width / 2.5,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorPink,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),

                      )
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>ScreenMainPage()));
                  },
                  child: const Text("SUBMIT", style: TextStyle(fontSize: 19),),
                ),
              ),
              Container(
                height: size.height * 0.25,
                color: colorTransperent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 30,
                      width: double.infinity,
                      color: colorTransperent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.sign_language_rounded, size: 28,),
                          SizedBox(width: 10,),
                          Text("SIGNL",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    size30,
                    const Text("Already hava an account?", style: blackText13,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const ScreenLoginPage()));
                      },
                      child: const Text("Login", style: TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
