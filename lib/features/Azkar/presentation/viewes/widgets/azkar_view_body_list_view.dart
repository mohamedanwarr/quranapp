import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quranapp/core/Utilis/Approuter.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/azkar_view_body_list_view_container.dart';

class AzkarViewBodyListView extends StatelessWidget {
  AzkarViewBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.KAzkarDetailsView);
                },
                child: AzkarViewBodyListViewContainer(index: index,),
              ),
            );
          }),
    );
  }
}
