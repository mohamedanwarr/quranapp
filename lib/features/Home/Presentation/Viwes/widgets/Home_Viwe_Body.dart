import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Home_AppBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Main_Section_HomeView.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomeAppBar(),
        body: const MainSectionHomeView(),
      ),
    );
  }
}












