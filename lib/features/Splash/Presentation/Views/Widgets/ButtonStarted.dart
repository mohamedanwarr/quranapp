import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';

import '../../../../../Constant.dart';
import '../../../../../core/Utilis/Styles.dart';
class ButtonStarted extends StatelessWidget {
  const ButtonStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: -20,
      left: 0,
      child: Center(
        child: Container(
          width: 185,
          height: 60,
          decoration: ShapeDecoration(
            color: Kcontainertcolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
          ),
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KMainView);
            },
            child: Text('Get Started',
                textAlign: TextAlign.center,
                style: Styles.TextStyle18.copyWith(
                  color: Ktextlightcolor,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
      ),
    );
  }
}
