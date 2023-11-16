import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class TabBarNamesHomeView extends StatelessWidget {
  const TabBarNamesHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: false,
      unselectedLabelColor: Ktextsecondrycolor,
      labelStyle:
      Styles.TextStyle16.copyWith(fontSize: 17),
      labelColor: Ktextmaincolor,
      labelPadding:
      const EdgeInsets.symmetric(vertical: 12),
      indicatorPadding:
      const EdgeInsets.symmetric(horizontal: 4),
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Ktextmaincolor,
      tabs: const [
        Text('Surah'),
        Text('Para'),
        Text('Page'),
        Text('Hijb'),
      ],
    );
  }
}