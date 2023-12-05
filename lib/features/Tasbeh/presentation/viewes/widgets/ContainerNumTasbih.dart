import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class ContainerNumTasbih extends StatelessWidget {
  const ContainerNumTasbih({super.key, required this.countnum, required this.name100, required this.men100});

  final String name100;
  final String men100;
  final String countnum;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 65,
      decoration: ShapeDecoration(
        color: Ktextmaincolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name100,
            style: Styles.TextStyle26.copyWith(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            men100,
            style: Styles.TextStyle26.copyWith(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            countnum,
            style: Styles.TextStyle26.copyWith(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}