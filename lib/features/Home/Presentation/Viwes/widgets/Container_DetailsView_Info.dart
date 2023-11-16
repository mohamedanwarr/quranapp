import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class ContainerDetailsViewInfo extends StatelessWidget {
  const ContainerDetailsViewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Positioned(
        bottom: -33,
        right: -48,
        child: SvgPicture.asset(
          'Assets/images/detailsQuran.svg',
          width: 350,
          height: 200,
          colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.1), BlendMode.dstATop),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Column(
            children: [
              const Text(
                'Al-Fatiah',
                style: Styles.TextStyle26,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'The Opening',
                style: Styles.TextStyle18,
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 2,
                endIndent: 60,
                indent: 60,
                color: Ktextlightcolor.withOpacity(0.3),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'MECCAN',
                    style: Styles.TextStyle16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '\u2022',
                    style: Styles.TextStyle16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '7 VERSES',
                    style: Styles.TextStyle16,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'بسم لله الرحمن الرحيم',
                style: Styles.TextStyle26.copyWith(fontFamily: Kfontsecond),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
