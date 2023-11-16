import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/core/Utilis/FlutterFont.dart';

Container buildBottomNav({void Function(int)? ontab, int? currentindex}) {
  return Container(
    height: 80,
    width: double.infinity,
    child: BottomNavigationBar(
      enableFeedback: true,
      unselectedFontSize: 0,
      selectedFontSize: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: ontab,
      currentIndex: currentindex!,
      elevation: 50,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            FlutterFontsIcons.FlutterLogoHome,
            size: 34,
          ),
          label: 'Page 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FlutterFontsIcons.FlutterLogoTafseer,
            size: 32,
          ),
          label: 'Page 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FlutterFontsIcons.FlutterLogoPrayTime,
            size: 31,
          ),
          label: 'Page 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FlutterFontsIcons.FlutterLogoDOaa,
            size: 25,
          ),
          label: 'Page 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FlutterIcons.bookmark_o_faw,
            size: 29,
          ),
          label: 'Page 3',
        ),
      ],
    ),
  );
}
