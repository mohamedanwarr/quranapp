import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class DuaaViewBodyListViewContainer extends StatelessWidget {
  const DuaaViewBodyListViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 75,
      decoration: ShapeDecoration(
        color: Knightzekrcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Center(
        child: Text(
          'أدعية الأنبياء',
          style: Styles.TextStyle26.copyWith(
              color: Ktextlightcolor, fontFamily: Kfontsecond),
        ),
      ),
    );
  }
}
