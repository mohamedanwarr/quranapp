
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
AppBar TimePrayCustomAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
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
          'Time Pray',
          style: Styles.TextStyle20.copyWith(
            color: Ktextmaincolor.withOpacity(1),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon:  const FaIcon(
            FontAwesomeIcons.locationDot,
            color:Ktextsecondrycolor,

          ),
        ),
      ],
    ),
  );
}