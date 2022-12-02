import 'package:flutter/material.dart';
import 'package:signl/core/size/size.dart';
import 'package:signl/core/text_style/text_style.dart';
import 'package:signl/presentation/home_page/screen_home_page.dart';
import 'package:signl/presentation/main_page/main_page.dart';
import 'package:signl/presentation/signing_page/sign_up_page/screen_sign_up_page.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/text_field_decoration_widget.dart';

class ScreenLoginPage extends StatelessWidget {
  const ScreenLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: colorOffWhite,
        resizeToAvoidBottomInset: false,

        // Body

        body: SafeArea(
          child: Column(children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: size.width * 0.2,
                      color: colorOffWhite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: IconButton(
                              splashRadius: 20,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.info_outline_rounded,
                                color: colorBlack,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.4,
                      width: double.infinity,
                      color: colorTransperent,
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "Login :",
                                  style: blackText30,
                                ),
                              )
                            ],
                          ),
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
                            )),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> ScreenMainPage()));
                        },
                        child: const Text(
                          "L0GIN",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.4,
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
                                Icon(
                                  Icons.sign_language_rounded,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "SIGNL",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          size30,
                          const Text(
                            "Create an account?",
                            style: blackText13,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ScreenSignupPage()));
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
          ),
        ),
    );
  }
}
