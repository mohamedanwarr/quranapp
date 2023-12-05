import 'package:flutter/material.dart';
import 'package:quranapp/core/Utilis/Functions/CustomeAppBar.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/Azkar_View_Body.dart';



class AzkarView extends StatelessWidget {
  const AzkarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomeAppBar(title: 'Azkar'),
        body: const AzkarViewBody(),
      ),
    );
  }
}


