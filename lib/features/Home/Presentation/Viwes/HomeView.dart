import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Home_Viwe_Body.dart';

class HomeViwe extends StatelessWidget {
  const HomeViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeViweBody(),
    );
  }
}
