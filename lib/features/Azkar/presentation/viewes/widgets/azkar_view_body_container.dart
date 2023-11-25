import 'package:flutter/material.dart';

class AzkarViewBodyContainer extends StatelessWidget {
  const AzkarViewBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 150,
      decoration: ShapeDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.1), BlendMode.colorBurn),
            fit: BoxFit.cover,
            image: AssetImage(
              'Assets/images/4805865_29513.jpg',
            )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
