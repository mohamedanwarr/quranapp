import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';

void main() {
  runApp(const QuranAPP());
}

class QuranAPP extends StatelessWidget {
  const QuranAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KkPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          unselectedItemColor: Ktextsecondrycolor.withOpacity(0.9),
          selectedItemColor:Ktextmaincolor,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

