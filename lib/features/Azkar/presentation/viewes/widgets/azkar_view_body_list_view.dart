import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class AzkarViewBodyListView extends StatelessWidget {
  const AzkarViewBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: 120,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 12),
              child: GestureDetector(
                onTap: (){
                  GoRouter.of(context).push(AppRouter.KAzkarDetailsView);
                },
                child: Container(
                  width: 350,
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Ktextsecondrycolor.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Morning zekr',
                          textDirection: TextDirection.rtl,
                          style:
                              Styles.TextStyle16.copyWith(color: Ktextmaincolor),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.chevronRight,
                            color: Ktextmaincolor,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
