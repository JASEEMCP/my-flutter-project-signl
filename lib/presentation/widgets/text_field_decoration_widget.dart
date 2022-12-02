import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/text_style/text_style.dart';



InputDecoration inputDecorationWidget(String fieldName) {
  return InputDecoration(
    hintText: fieldName,
    hintStyle: blackTextC30,
    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
    filled: true,
    fillColor: colorWhite,
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
            width: 3,
            color: colorPink
        )
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none
    ),
  );
}