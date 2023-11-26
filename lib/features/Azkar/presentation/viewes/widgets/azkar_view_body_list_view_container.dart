import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class AzkarViewBodyListViewContainer extends StatelessWidget {
  const AzkarViewBodyListViewContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 75,
      decoration: ShapeDecoration(
        color: colorlist[index % colorlist.length],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          ImageZekrlist[index % ImageZekrlist.length]))),
            ),
            const Spacer(),
            Text(
              'اذكار الصباح',
              style: Styles.TextStyle16.copyWith(
                  color: Ktextlightcolor, fontFamily: Kfontsecond),
            )
          ],
        ),
      ),
    );
  }
}
