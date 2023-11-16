import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/LastRead_Conatiner.dart';

class FirstSectionHomeViwe extends StatelessWidget {
  const FirstSectionHomeViwe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Asslamualaikum',
            style: Styles.TextStyle18.copyWith(color: Ktextsecondrycolor),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Mohamed Anwar',
            style: Styles.TextStyle26.copyWith(color: Ktextdarkcolor),
          ),
          const SizedBox(
            height: 24,
          ),
          const LastReadContainer(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
