import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Container_Details_View.dart';
class FirstSectionDetailsViewBody extends StatelessWidget {
  const FirstSectionDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            ContainerDetailsView(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}