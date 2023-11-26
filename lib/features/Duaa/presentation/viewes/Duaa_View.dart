import 'package:flutter/material.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/DuaaViewBody.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Home_AppBar.dart';

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


