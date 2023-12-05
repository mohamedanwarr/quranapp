import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/LastRead_Conatiner.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/PrayTime_Container.dart';

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
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KtimeparyView);
            },
            child: const PrayTimeContainer(),
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




