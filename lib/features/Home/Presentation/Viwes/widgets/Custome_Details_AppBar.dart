import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class CustomeDetailsAppBar extends StatelessWidget {
  const CustomeDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
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
              FlutterIcons.search_fea,
              color: Ktextsecondrycolor,
            ),
          ),
        ],
      ),
    );
  }
}