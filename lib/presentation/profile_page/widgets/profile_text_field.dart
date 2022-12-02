import 'package:flutter/material.dart';
import 'package:signl/core/colors/colors.dart';
import 'package:signl/presentation/profile_page/screen_profile_page.dart';


class ProfileTextField extends StatelessWidget {
   ProfileTextField({
    Key? key,required this.fieldName
  }) : super(key: key);
  final String fieldName;






  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: size.width*0.25,left: size.width*0.1),
      child: ValueListenableBuilder(
        valueListenable: isEdit,
        builder: (context,bool value, ctx) {
          return TextField(
            enabled: value,
            cursorColor: colorGrey800,
            style: const TextStyle(fontWeight: FontWeight.w600),
            decoration: InputDecoration(

                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black38),
                ),
                hintText: fieldName,

                hintStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700)

            ),
          );
        }
      ),
    );
  }
}