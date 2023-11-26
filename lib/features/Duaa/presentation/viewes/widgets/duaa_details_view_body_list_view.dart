import 'package:flutter/material.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/duaa_details_view_body_container.dart';

class DuaaDetailsViewBodyListView extends StatelessWidget {
  const DuaaDetailsViewBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height ,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: DuaaDetailsViewBodyContainer(),
            );
          },
        ),
      ),
    );
  }
}
