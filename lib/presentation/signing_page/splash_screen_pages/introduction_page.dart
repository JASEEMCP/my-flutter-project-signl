import 'package:flutter/material.dart';
import 'package:signl/core/text_style/text_style.dart';
import 'package:signl/presentation/signing_page/login_page/screen_login_page.dart';

import '../../../core/colors/colors.dart';

class ScreenIntroduction extends StatelessWidget {
  const ScreenIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.width * 0.20,
        elevation: 0,
        backgroundColor: colorOffWhite,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.sign_language_rounded,
                  color: colorBlack,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "SIGNL",
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Transform.scale(
            scaleX: 1.6,
            scaleY: 1.05,
            child: Container(
              height: 300,
              width: 400,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(400, 300),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/homeP.png",
                    ),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: size.width / 7, top: 10),
            height: size.width / 2,
            width: double.infinity,
            //color: Colors.lightGreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Education",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text("Is not the filling", style: blackTextN30),
                Text("Of pail But the", style: blackTextN30),
                Text("Lighting of a Fire", style: blackTextN30),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.width / 7.5,
                width: size.width / 3.6,
                margin: EdgeInsets.only(right: size.width / 7),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const ScreenLoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: colorPink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "NEXT",
                    style: whiteText22,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
