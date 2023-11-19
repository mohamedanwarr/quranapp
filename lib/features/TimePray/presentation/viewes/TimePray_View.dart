import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
class TimePrayView extends StatelessWidget {
  const TimePrayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TimePrayViewBody(),
    );
  }
}
class TimePrayViewBody extends StatelessWidget {
  const TimePrayViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomTimePrayAppBar()
    );
  }

  AppBar CustomTimePrayAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon:   const FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: Ktextsecondrycolor,
              size: 25,
            ),
          ),
          Text(
            'Time Pray',
            style: Styles.TextStyle20.copyWith(
              color: Ktextmaincolor.withOpacity(1),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon:  FaIcon(
              FontAwesomeIcons.locationDot,
              color: Ktextmaincolor.withOpacity(1),

            ),
          ),
        ],
      ),
    );
  }
}

