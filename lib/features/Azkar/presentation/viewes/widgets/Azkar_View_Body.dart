import 'package:flutter/material.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/azkar_view_body_container.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/azkar_view_body_list_view.dart';
class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              children: [
                AzkarViewBodyContainer(),
              ],
            ),
          ),
        ),
      ],
      body: const AzkarViewBodyListView(),
    );
  }
}