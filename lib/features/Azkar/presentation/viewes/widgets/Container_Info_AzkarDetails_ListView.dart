import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class ContainerInfoAzkarDetailsListView extends StatelessWidget {
  const ContainerInfoAzkarDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
      child: Column(
        children: [
          Text(
            'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر  ',
            textDirection: TextDirection.rtl,
            maxLines: 10,
            style: Styles.TextStyle16.copyWith(
              color: Ktextdarkcolor,
              fontFamily: Kfontsecond,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Ktextmaincolor, width: 2)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.bookmark,
                          color: Ktextmaincolor,
                          size: 20,
                        ),
                      ),
                      Text(
                        "حفظ",
                        style: Styles.TextStyle16.copyWith(
                            color: Ktextmaincolor, fontFamily: Kfontsecond),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Ktextmaincolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "(4/0)",
                        style: Styles.TextStyle16.copyWith(
                            color: Ktextlightcolor, fontFamily: Kfontsecond),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "تكرار",
                        style: Styles.TextStyle16.copyWith(
                            color: Ktextlightcolor, fontFamily: Kfontsecond),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
