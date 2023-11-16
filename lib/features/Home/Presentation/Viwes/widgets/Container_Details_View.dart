import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_DetailsView_Info.dart';

class ContainerDetailsView extends StatelessWidget {
  const ContainerDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        clipBehavior: Clip.antiAlias,
        width: 360,
        height: 295,
        decoration: ShapeDecoration(
          shadows: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 0.0,
              spreadRadius: 0.0,
              offset: Offset(1.0, 3.0), // Shadow position
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: const ContainerDetailsViewInfo(),
      ),
    ]
    );
  }
}
