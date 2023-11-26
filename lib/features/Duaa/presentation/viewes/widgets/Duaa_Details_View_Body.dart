import 'package:flutter/material.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/duaa_details_view_body_list_view.dart';
class DuaaDetailsViewBody extends StatelessWidget {
  const DuaaDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [],
      body: const DuaaDetailsViewBodyListView(),
    );
  }
}