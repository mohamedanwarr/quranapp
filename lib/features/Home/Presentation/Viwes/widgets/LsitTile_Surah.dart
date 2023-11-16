import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class LsitTileSurah extends StatelessWidget {
  const LsitTileSurah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Positioned(
              left: 18,
              top: 8,
              child: Text(
                '1',
                style: Styles.TextStyle16.copyWith(
                    color: Ktextdarkcolor, fontWeight: FontWeight.w900),
              )),
          SvgPicture.asset(
            'Assets/images/surahNum.svg',
            width: 40,
          )
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: Text(
          'Al-Fatiah',
          style: Styles.TextStyle16.copyWith(
              color: Ktextdarkcolor, fontWeight: FontWeight.w900),
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            'Meccan',
            style: Styles.TextStyle14.copyWith(
              color: Ktextsecondrycolor,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            '\u2022',
            style: Styles.TextStyle16.copyWith(
              color: Ktextsecondrycolor.withOpacity(0.3),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            '286 verses',
            style: Styles.TextStyle14.copyWith(
              color: Ktextsecondrycolor,
            ),
          )
        ],
      ),
      trailing: Text(
        'الفاتحة',
        style: Styles.TextStyle20.copyWith(
          color: Ktextmaincolor,
          fontFamily: Kfontsecond,
        ),
      ),
    );
  }
}
