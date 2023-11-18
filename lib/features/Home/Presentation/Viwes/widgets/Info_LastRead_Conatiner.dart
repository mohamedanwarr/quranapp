import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/generated/assets.dart';
class InfoLastReadConatiner extends StatelessWidget {
  const InfoLastReadConatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 8),
          child: Row(
            children: [
              SizedBox(
                width: 75,
                height: 50,
                child: SvgPicture.asset(
                  Assets.imagesQuranread,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        FlutterIcons.readme_faw5d,
                        size: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Last Read',
                        style: Styles.TextStyle14,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        'Al-Fatiah',
                        style: Styles.TextStyle14.copyWith(
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text('Ayah No: 1', style: Styles.TextStyle12),
                    ],
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 20,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}