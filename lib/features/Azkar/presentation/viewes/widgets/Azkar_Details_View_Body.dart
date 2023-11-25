import 'package:flutter/material.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/ListView_Azkar_Details_Body_View.dart';
class AzkarDetailsViewBody extends StatelessWidget {
  const AzkarDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[],
      body: const ListViewAzkarDetailsView(),
    );
  }
}