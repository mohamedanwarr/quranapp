import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Tasbeh/presentation/viewes/widgets/TasbihModalBottomSheet.dart';
class ListAndRefreshTasbih extends StatelessWidget {
  const ListAndRefreshTasbih({super.key, required this.onTasbihSelected, required this.onTabRefrsh});

  final Function(String content, String description) onTasbihSelected;
  final Function() onTabRefrsh;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Ktextmaincolor),
          child: IconButton(
            tooltip: 'Tasbih List',
            onPressed: () {
              TasbihModalBottomSheet(context, onTasbihSelected);
            },
            icon: const FaIcon(
              FontAwesomeIcons.bars,
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 220,
        ),
        Container(
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Ktextmaincolor),
          child: IconButton(
            tooltip: 'Refresh',
            onPressed: onTabRefrsh,
            icon: const Icon(
              FontAwesomeIcons.arrowsRotate,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }

}