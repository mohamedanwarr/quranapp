import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class DuaaDetailsViewBodyContainer extends StatelessWidget {
  const DuaaDetailsViewBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Ktextsecondrycolor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
        child: Text(
          'رَّبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَلِمَن دَخَلَ بَيْتِيَ مُؤْمِنًا وَلِلْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ وَلَا تَزِدِ الظَّالِمِينَ إِلَّا تَبَارًا. [نوح - 28].رَبِّ إِنِّي أَعُوذُ بِكَ أَنْ أَسْأَلَكَ مَا لَيْسَ لِي بِهِ عِلْمٌ وَإِلاَّ تَغْفِرْ لِي وَتَرْحَمْنِي أَكُن مِّنَ الْخَاسِرِينَ. [هود - 47]. رَّبِّ أَنزِلْنِي مُنزَلاً مُّبَارَكاً وَأَنتَ خَيْرُ الْمُنزِلِينَ. [المؤمنون - 29].',
          textDirection: TextDirection.rtl,
          maxLines: 10,
          style: Styles.TextStyle16.copyWith(
            color: Ktextdarkcolor,
            fontFamily: Kfontsecond,
          ),
        ),
      ),
    );
  }
}
