import 'package:flutter/material.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/Container_AzkarDetails_ListView.dart';
class ListViewAzkarDetailsView extends StatelessWidget {
  const ListViewAzkarDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.72,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              return const ContainerAzkarDetailsListView();
            }),
      ),
    );
  }
}