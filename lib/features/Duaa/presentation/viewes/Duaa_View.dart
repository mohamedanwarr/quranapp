import 'package:flutter/material.dart';
import 'package:quranapp/core/Utilis/Functions/CustomeAppBar.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/DuaaViewBody.dart';


class DuaaView extends StatelessWidget {
  const DuaaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(title: 'Duaa'),
      body: const DuaaViewBody(),
    );
  }
}


