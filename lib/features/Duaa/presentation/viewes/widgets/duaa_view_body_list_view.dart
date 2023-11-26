import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/duaa_view_body_list_view_container.dart';

class DuaaViewBodyListView extends StatelessWidget {
  const DuaaViewBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KDuaaDetailsView);
            },
            child: const DuaaViewBodyListViewContainer(),
          ),
        );
      },
    );
  }
}
