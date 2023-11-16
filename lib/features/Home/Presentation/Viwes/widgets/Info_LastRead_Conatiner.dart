import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      clipBehavior: Clip.antiAlias,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    FlutterIcons.readme_faw5d,
                    size: 19,
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
              const SizedBox(height: 20),
              Text(
                'Al-Fatiah',
                style:
                Styles.TextStyle18.copyWith(fontWeight: FontWeight.w900),
              ),
              const Text('Ayah No: 1', style: Styles.TextStyle14),

            ],
          ),
        ),

        Positioned(
          right: 0,
          top:20,
          child: SizedBox(
            width: 185,
            height: 126,
            child: SvgPicture.asset(Assets.imagesQuranlogo,fit: BoxFit.contain,),
          ),
        ),
      ],
    );
  }
}