import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Home_AppBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Home_TabsBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/LastRead_Conatiner.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const CustomeAppBar(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Asslamualaikum',
                      style:
                          Styles.TextStyle18.copyWith(color: Ktextsecondrycolor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const LastReadContainer(),
              const SizedBox(
                height: 15,
              ),
              const HomeTabs()
            ],
          ),
        ),
      ),
    );
  }
}


