import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_DetailsView_Info.dart';

class ContainerDetailsView extends StatelessWidget {
  const ContainerDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          clipBehavior: Clip.none,

          elevation: 16,
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 360,
            height: 265,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows:  const [
                BoxShadow(
                  color: Color(0xFFDF98FA),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                  offset: Offset(1.0, 2.0), // Shadow position
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment(0.71, -0.71),
                end: Alignment(0.71, 0.71),
                colors: [
                  Color(0xFFDF98FA),
                  Color(0xFF9055FF),
                ],
              ),
            ),
            child: const ContainerDetailsViewInfo(),
          ),
        ),
      ),
    ]
    );
  }
}
