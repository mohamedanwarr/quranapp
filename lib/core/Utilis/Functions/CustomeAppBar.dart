import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/FlutterFont.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
AppBar CustomeAppBar({required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon:  const Icon(
            FlutterFontsIcons2.FlutterIconMenu2line,
            color: Ktextsecondrycolor,
            size: 25,
          ),
        ),
        Text(
          title,
          style: Styles.TextStyle20.copyWith(
            color: Ktextmaincolor.withOpacity(1),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FlutterFontsIcons2.FlutterIconSearch,
            color: Ktextsecondrycolor,

          ),
        ),
      ],
    ),
  );
}