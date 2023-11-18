import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class ContainerPlayandShareandBookmark extends StatelessWidget {
  const ContainerPlayandShareandBookmark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47,
      decoration: ShapeDecoration(
        color: Ktextsecondrycolor.withOpacity(0.1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 29,
              height: 29,
              decoration: ShapeDecoration(
                color: Ktextmaincolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.3)),
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: Styles.TextStyle14.copyWith(
                    fontWeight: FontWeight.w900, height: 1.8),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.shareNodes,
                    color: Ktextmaincolor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FlutterIcons.play_fea,
                    color: Ktextmaincolor,
                    weight: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.bookmark,
                    color: Ktextmaincolor,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}