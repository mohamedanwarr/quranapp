import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_DetailsView_Info.dart';

class ContainerDetailsView extends StatelessWidget {
  const ContainerDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        clipBehavior: Clip.none,

        elevation: 16,
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: 360,
          height: 275,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 4.0,
                spreadRadius: 0.0,
                offset: Offset(3.0, 3.0), // Shadow position
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
    ]
    );
  }
}
