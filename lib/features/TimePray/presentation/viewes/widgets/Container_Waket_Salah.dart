import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/FlutterFont.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

Container ContainerWaketSalah(
    {required int index,
    required List selectedIndices,
    required final foramte,
    required void Function(int index) toggleSound,
    required List soundStates}) {
  return Container(
    width: 120,
    height: 65,
    decoration: ShapeDecoration(
      color: selectedIndices[index]
          ? Ktextlightcolor
          : Ktextmaincolor.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: selectedIndices[index]
              ? Ktextsecondrycolor.withOpacity(0.8)
              : Ktextmaincolor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  toggleSound(index);
                },
                icon: const Icon(
                  WaketSalatIcons.Fajir,
                  size: 24,
                ),
                color: Ktextmaincolor,
              ),
              Text(
                'Duhar ',
                style: Styles.TextStyle16.copyWith(
                  color: Ktextmaincolor,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "$foramte",
                    style: Styles.TextStyle16.copyWith(
                      color: Ktextsecondrycolor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
