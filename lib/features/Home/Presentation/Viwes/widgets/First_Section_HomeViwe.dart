import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/LastRead_Conatiner.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/PrayTime_Container.dart';

class FirstSectionHomeViwe extends StatelessWidget {
  const FirstSectionHomeViwe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          PrayTimeContainer(),
          SizedBox(
            height: 24,
          ),
          LastReadContainer(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}




