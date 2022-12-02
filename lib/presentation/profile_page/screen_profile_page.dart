import 'package:flutter/material.dart';
import 'package:signl/core/size/size.dart';
import 'package:signl/core/text_style/text_style.dart';
import 'package:signl/presentation/main_page/widget/bottom_nav.dart';
import 'package:signl/presentation/profile_page/widgets/pop_menu_list.dart';
import 'package:signl/presentation/profile_page/widgets/profile_text_field.dart';
import 'package:signl/presentation/signing_page/login_page/screen_login_page.dart';

import '../../core/colors/colors.dart';


  ValueNotifier<bool> isEdit = ValueNotifier(false);

class ScreenProfile extends StatelessWidget{
  const ScreenProfile({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //Appbar
      appBar: AppBar(
        toolbarHeight: size.width*0.20,
        elevation: 0,
        backgroundColor: colorOffWhite,

        leading :Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
                  splashRadius: 15,
                  onPressed: (){
                     isEdit.value = !isEdit.value;

                  },
            icon: const Icon(Icons.edit,size: 30,),color: colorGrey800,
              ),
        ),
            actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 10),

              child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                  elevation: 0,
                  icon: Icon(Icons.more_vert,color: colorGrey800,size: 35,),
                  splashRadius: 15,
                  color: colorPink11,
                  onSelected: (value){
                      print(value);
                      if(value==3) {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (ctx) => const ScreenLoginPage()));
                    };
                      selectedItemIndex.value=0;
                  },

                  itemBuilder:(ctx)=>
                      [
                        const PopupMenuItem(value: 0,child: PopUpMenuList(title: "Settings",icon: Icons.settings,),),
                        const PopupMenuItem(value: 1,child: PopUpMenuList(title: "About Us",icon: Icons.info_outline_rounded,),),
                        const PopupMenuItem(value: 2,child: PopUpMenuList(title: "Help",icon: Icons.help,),),
                        const PopupMenuItem(value: 3,child: PopUpMenuList(title: "Logout",icon: Icons.logout,),),

                      ]
              ),
    ),
      ],
      ),

      // BODY
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  const [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: colorPink11,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        radius: 19,
                        backgroundColor: colorOffWhite,
                        child: CircleAvatar(

                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.edit,color: colorWhite,size: 20,),
                          ),
                      ),

                      ),
                  ),

              ],
            ),
            const Text('Name',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
             ProfileTextField(fieldName: "E-mail",),
            size15,
             ProfileTextField(fieldName: "Bio",),
            size15,
             ProfileTextField(fieldName: "Date of Birth",),

          ],

        ),
      ),
    );
  }

}

