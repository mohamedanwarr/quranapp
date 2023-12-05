import 'package:flutter/material.dart';
import 'package:quranapp/core/Utilis/Functions/CustomeAppBar.dart';
import 'package:quranapp/features/Tasbeh/presentation/viewes/widgets/TasbehViewBody.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomeAppBar(title: 'Tasbih'),
        body: const TasbehViewBody(),
      ),
    );
  }
}
