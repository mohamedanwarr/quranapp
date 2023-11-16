import 'package:flutter/material.dart';
import 'package:quranapp/generated/assets.dart';

import '../../../../../Constant.dart';
import 'ButtonStarted.dart';
class Containersplash extends StatelessWidget {
  const Containersplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(

            height: 490,
            width: MediaQuery.of(context).size.width*22,
            decoration: ShapeDecoration(
              color: Ktextmaincolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child:Image.asset(Assets.imagesLogo)
        ),
        const ButtonStarted(),
      ],
    );
  }
}