import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/TabBar_Names_HomeView.dart';
class SecondSectionHomeViwe extends StatelessWidget {
  const SecondSectionHomeViwe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: KkPrimaryColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      shape: Border(
        bottom: BorderSide(
          width: 3,
          color: Ktextsecondrycolor.withOpacity(0.1),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: TabBarNamesHomeView(),

      ),
    );
  }
}