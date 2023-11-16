import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
              height: 26,
              width: 26,
              child: SvgPicture.asset('Assets/images/iconlist.svg')),
        ),
        Text(
          'Quran App',
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
    );
  }
}