import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/ContainerPlayandShareandBookmark.dart';
class ListViewDetailsViewInfo extends StatelessWidget {
  const ListViewDetailsViewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ContainerPlayandShareandBookmark(),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الحمدللة رب العالمين',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: Styles.TextStyle20.copyWith(
                  color: Ktextdarkcolor,
                  fontFamily: Kfontsecond,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              child: Text(
                '[All] praise is [due] to Allah, Lord of the worlds -',
                maxLines: 5,
                textAlign: TextAlign.start,
                style: Styles.TextStyle16.copyWith(
                  color: Ktextdarkcolor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}