import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/LsitTile_Surah.dart';

class SurahTap extends StatelessWidget {
  const SurahTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: ListView.separated(

            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KDetailsView);
                  },
                  child: const LsitTileSurah());
            },
            separatorBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(
                  color: Ktextsecondrycolor.withOpacity(0.1),
                  thickness: 1,
                  endIndent: 10,
                  indent: 10,
                  height: 0,
                ),
              );
            },
            itemCount: 10),
      ),
    );
  }
}
