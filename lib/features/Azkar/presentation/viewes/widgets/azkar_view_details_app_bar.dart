import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

AppBar AzkarDetailsViewAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      'Morning Zekr',
      style: Styles.TextStyle20.copyWith(
        color: Ktextmaincolor.withOpacity(1),
      ),
    ),
    leading: IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const FaIcon(
        FontAwesomeIcons.arrowLeftLong,
        color: Ktextsecondrycolor,
      ),
    ),
  );
}