import 'package:flutter/material.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/First_Section_DetailsView_Body.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/Second_Section_DetailsView_Body.dart';
class MainSectionDetailsViewBody extends StatelessWidget {
  const MainSectionDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
      [
        const FirstSectionDetailsViewBody(),
      ],
      body: const SecondSectionDetailsViewBody(),
    );
  }
}