import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_Details_View.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Custome_Details_AppBar.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/ListView_DetailsView.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:SafeArea(
            child: Column(
              children: [
                CustomeDetailsAppBar(),
                SizedBox(height: 12),
                ContainerDetailsView(),
                SizedBox(height: 30),
                ListViewDetailsView(),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child:  ListViewDetailsView(),
        )
      ],

    );
  }
}






