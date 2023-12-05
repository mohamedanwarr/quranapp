import 'package:flutter/cupertino.dart';
import 'package:quranapp/Constant.dart';

class ContainerTabonTasbih extends StatelessWidget {
  const ContainerTabonTasbih({
    super.key, required this.incquantity,
  });
  final Function ()incquantity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: incquantity,
      child: Container(
        width: 180,
        height: 180,
        decoration:
        const BoxDecoration(color: Ktextmaincolor, shape: BoxShape.circle),
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Positioned(
              bottom: 10,
              right: 15,
              child: SizedBox(
                width: 130,
                child: Image.asset('Assets/images/pointer.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}