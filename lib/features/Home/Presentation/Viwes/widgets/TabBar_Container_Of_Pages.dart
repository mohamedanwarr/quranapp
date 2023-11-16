import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Hijb_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Page_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Para_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Surah_Tab_page.dart';
class TabBarContainerOfPages extends StatelessWidget {
  const TabBarContainerOfPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.410,
      child:  const TabBarView(
        children: [
          SurahTap(),
          ParaTap(),
          PageTap(),
          HijbTab(),
        ],
      ),
    );
  }
}