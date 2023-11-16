import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/First_Section_HomeViwe.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Second_Section_HomeViwe.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/TabBar_Container_Of_Pages.dart';
class MainSectionHomeView extends StatelessWidget {
  const MainSectionHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const FirstSectionHomeViwe(),
              const SecondSectionHomeViwe()
            ],
            body: const TabBarContainerOfPages()),
      ),
    );
  }
}