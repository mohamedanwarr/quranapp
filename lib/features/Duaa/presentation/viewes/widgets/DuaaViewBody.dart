import 'package:flutter/material.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/duaa_view_body_list_view.dart';
class DuaaViewBody extends StatelessWidget {
  const DuaaViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      child: DuaaViewBodyListView(),
    );
  }
}