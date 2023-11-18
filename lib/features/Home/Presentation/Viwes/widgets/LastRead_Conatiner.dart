import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Info_LastRead_Conatiner.dart';
class LastReadContainer extends StatelessWidget {
  const LastReadContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.90,
      height: 75,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Ktextmaincolor,
        shadows:  const [
        BoxShadow(
        color: Colors.white,
          blurRadius: 4.0,
          spreadRadius: 0.0,
          offset: Offset(3.0, 3.0), // Shadow position
      ),
        ],
        // gradient: const LinearGradient(
        //   end: Alignment(0.71, -0.71),
        //   begin: Alignment(-0.71, 0.71),
        //   colors: [Color(0xFFDD89FA), Color(0xFF9055FF)],
        // ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const InfoLastReadConatiner(),
    );
  }
}