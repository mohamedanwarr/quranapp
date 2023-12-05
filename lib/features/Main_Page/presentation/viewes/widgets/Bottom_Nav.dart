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
      elevation: 100,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            BottomNavIcons.QuranBook,
            size: 34,
          ),
          label: 'Page 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            BottomNavIcons.Duaa,
            size: 35,
          ),
          label: 'Page 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            BottomNavIcons.tasbih,
            size: 31,
          ),
          label: 'Page 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            BottomNavIcons.tauhid,
            size: 35,
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
