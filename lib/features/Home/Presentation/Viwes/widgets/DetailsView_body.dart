import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Details_AppBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Main_Section_DetailsView_Body.dart';



class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeDetailsAppBar(context),
      body: MainSectionDetailsViewBody(),
    );
  }
}












