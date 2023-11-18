import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/FlutterFont.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
AppBar CustomeDetailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: Ktextsecondrycolor,
            )),
        Text(
          'Al-Fatiah',
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