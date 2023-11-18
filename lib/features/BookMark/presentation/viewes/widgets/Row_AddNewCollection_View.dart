import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/FlutterFont.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class RowAddNewCollectionView extends StatelessWidget {
  const RowAddNewCollectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FlutterIcons.folder_plus_fea,
              color: Ktextmaincolor,
              size: 25,
            ),
          ),
          Text(
            'Add new collection',
            style: Styles.TextStyle16.copyWith(color: Ktextmaincolor),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon:  const Icon(
              FlutterFontsIcons2.FlutterIconMenu3line,
              color: Ktextmaincolor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}