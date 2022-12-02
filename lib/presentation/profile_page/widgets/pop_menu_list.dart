import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/text_style/text_style.dart';


class PopUpMenuList extends StatelessWidget {
  const PopUpMenuList({
    Key? key, required this.icon, required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Icon(icon, color: Colors.black, size: 21,),
          const SizedBox(width: 10,),
          Text(title, style: blackText12,)
        ],

    );
  }
}

