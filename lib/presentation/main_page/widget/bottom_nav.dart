import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';


ValueNotifier<int> selectedItemIndex =ValueNotifier(0);
Widget bottomNavBarItem(BuildContext context,String iconData,double iconSize,int index) {
  void currentIndex(int index){
    selectedItemIndex.value = index;
  }
  return GestureDetector(
    onTap: (){
      currentIndex(index);
    },
    child: SizedBox(height: iconSize,
      width: MediaQuery.of(context).size.width/4,
      child: ValueListenableBuilder(
        valueListenable: selectedItemIndex,
        builder: (context,int isSelected,ctx) {
          return Image.asset(iconData,color: isSelected == index?iconColor:Colors.white);
        }
      ),

    ),
  );
}
