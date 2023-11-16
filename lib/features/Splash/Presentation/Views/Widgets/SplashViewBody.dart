import 'package:flutter/material.dart';
import 'package:quranapp/features/Splash/Presentation/Views/Widgets/Container_Splash.dart';

import '../../../../../Constant.dart';
import '../../../../../core/Utilis/Styles.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Quran App',
                style: Styles.TextStyle20.copyWith(
                    fontSize: 28, color: Ktextmaincolor),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Learn Quran and \nRecite once everyday',
                textAlign: TextAlign.center,
                style: Styles.TextStyle18.copyWith(
                  color: Ktextsecondrycolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 49,
              ),
              const Containersplash(),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
