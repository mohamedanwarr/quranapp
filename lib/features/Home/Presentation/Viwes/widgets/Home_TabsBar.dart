import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Hijb_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Page_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Para_Tab_Page.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Surah_Tab_page.dart';
class HomeTabs extends StatelessWidget {
  const HomeTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             TabBar(
              isScrollable: false,
              unselectedLabelColor:Ktextsecondrycolor ,
              labelStyle:Styles.TextStyle16.copyWith(
                fontSize: 17
              ) ,
              labelColor: Ktextmaincolor,
              labelPadding: const EdgeInsets.symmetric(vertical: 12),
               indicatorPadding: EdgeInsets.symmetric(horizontal:4 ),
              indicatorWeight:4 ,
              indicatorSize:TabBarIndicatorSize.tab,
              indicatorColor: Ktextmaincolor,
              tabs: const [
                Text('Surah'),
                Text('Para'),
                Text('Page'),
                Text('Hijb'),
              ],
            ),
            Divider(
              color: Ktextsecondrycolor.withOpacity(0.1),
              thickness: 3,
              endIndent: 10,
              indent: 10,
              height: 0,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.440,
              child: const TabBarView(
                children: [
                  SurahTap(),
                  ParaTap(),
                  PageTap(),
                  HijbTab(),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}