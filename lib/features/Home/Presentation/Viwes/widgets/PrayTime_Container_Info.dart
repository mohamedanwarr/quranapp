import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/generated/assets.dart';
class PrayTimeContainerInfo extends StatelessWidget {
  const PrayTimeContainerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Duhur',
                style: Styles.TextStyle14.copyWith(
                  color: Ktextlightcolor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '11:20',
                style: Styles.TextStyle26.copyWith(
                  color: Ktextlightcolor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 100, // you wouldn't need this once you have a child
                decoration: DottedDecoration(
                    shape: Shape.line,
                    color: Ktextlightcolor,
                    borderRadius: BorderRadius.circular(20),
                    strokeWidth: 3),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.locationDot,
                    color: Ktextlightcolor,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Cairo , Egypt',
                    style:
                    Styles.TextStyle12.copyWith(color: Ktextlightcolor),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: -25,
          bottom: -36,
          child: SizedBox(
            width: 250,
            height: 230,
            child: SvgPicture.asset(
              Assets.imagesMousq1,
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}