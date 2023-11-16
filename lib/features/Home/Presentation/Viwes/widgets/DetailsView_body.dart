import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_Details_View.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Details_AppBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/ListView_DetailsView.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Column(
        children: [
          CustomeDetailsAppBar(),
          SizedBox(height: 24),
          ContainerDetailsView(),
          SizedBox(height: 24),
          ListViewDetailsView(),
        ],
      ),
    );
  }
}






